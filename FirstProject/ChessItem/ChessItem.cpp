#include "ChessItem.h";

static std::filesystem::path currentPath = std::filesystem::current_path();

void Chess__RenderChessItem(const char* filename, SDL_Renderer* renderer, int posX, int posY) {

	int x = posX * 50;
	int y = posY * 50;

	std::string path = currentPath.string() + "/resources/" + filename;

	NSVGimage* svg = nsvgParseFromFile(path.c_str(), "px", 45.0f);
	if (svg == nullptr) {
		printf("Could not load SVG file!\n");
		return;
	}

	NSVGrasterizer* rast = nsvgCreateRasterizer();
	unsigned char* imgBuffer = new unsigned char[4 * svg->width * svg->height];

	nsvgRasterize(rast, svg, 0, 0, 1, imgBuffer, svg->width, svg->height, svg->width * 4);
	nsvgDeleteRasterizer(rast);

	SDL_Surface* surface = SDL_CreateRGBSurfaceFrom((void*)imgBuffer, svg->width, svg->height, 32, svg->width * 4, 0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000);

	if (surface == nullptr) {
		printf("Could not create surface from image buffer!\n");
		return;
	}

	SDL_Texture* texture = SDL_CreateTextureFromSurface(renderer, surface);
	if (texture == nullptr) {
		printf("Could not create texture from surface!\n");
		return;
	}

	SDL_FreeSurface(surface);
	delete[] imgBuffer;

	SDL_Rect destRect = SDL_Rect();

	destRect.x = x;
	destRect.y = y;
	destRect.w = 50;
	destRect.h = 50;

	SDL_RenderCopy(renderer, texture, nullptr, &destRect);

	SDL_DestroyTexture(texture);
	nsvgDelete(svg);

	return;
}

void Chess__RenderItemsList(SDL_Renderer* renderer) {

	Json::Value root;
	Json::Reader reader;

	std::ifstream file(currentPath.string() + "/ChessItem/chessItemsList.json");
	if (!file) {
		std::cerr << "Error opening file: " << strerror(errno) << std::endl;
	}

	reader.parse(file, root);

	// check if json loaded
	if (root == NULL) {
		printf("Could not load json file!\n");
		return;
	}


	if (!root.isArray()) {
		printf("Json file is not an array!\n");
		// return json as string
		std::cout << root.toStyledString() << std::endl;

		return;
	}

	if (root.size() == 0) {
		printf("Json file is empty!\n");
		return;
	}


	for (int i = 0; i < root.size(); i++) {
		Json::Value item = root[i];

		const char* filename = item["src"].asCString();
		Json::String type = item["type"].asString();
		
		const bool is_white = item["team"].asString() == "white";

		int x = 0;
		int y = 0;

		if (is_white) {
			y = 0;
		}
		else {
			y = 7;
		}

		if (type == "pawn")
		{
			if (is_white) {
				y = 1;
			}
			else {
				y = 6;
			}
			for (int j = 0; j < 8; j++) {
				Chess__RenderChessItem(filename, renderer, x, y);
				x += 1;
			}
		}
		else if (type == "rook") {
			x = 0;
			Chess__RenderChessItem(filename, renderer, x, y);
			x = 7;
			Chess__RenderChessItem(filename, renderer, x, y);
		}
		else if (type == "knight") {
			x = 1;
			Chess__RenderChessItem(filename, renderer, x, y);
			x = 6;
			Chess__RenderChessItem(filename, renderer, x, y);
		}
		else if (type == "bishop") {
			x = 2;
			Chess__RenderChessItem(filename, renderer, x, y);
			x = 5;
			Chess__RenderChessItem(filename, renderer, x, y);
		}
		else if (type == "queen") {
			x = 3;
			Chess__RenderChessItem(filename, renderer, x, y);
		}
		else if (type == "king") {
			x = 4;
			Chess__RenderChessItem(filename, renderer, x, y);
		}
		else {
			printf("Invalid type!\n");
			printf("Type: %s\n", type.c_str());
			Chess__RenderChessItem(filename, renderer, x, y);
		}
	}

	file.close();

	return;
}