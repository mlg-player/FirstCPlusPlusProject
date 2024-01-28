#include "FirstProject.h"

using namespace std;

static const string FILENAME = "contacts.txt";
static const auto phoneRegex = std::regex("(?:([+]\\d{1,4})[-.\\s]?)?(?:[(](\\d{1,3})[)][-.\\s]?)?(\\d{1,4})[-.\\s]?(\\d{1,4})[-.\\s]?(\\d{1,9})");
static const auto nameRegex = std::regex("^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$");

static const int CHESS_ITEM_WIDTH = 50;
static const int CHESS_ITEM_HEIGHT = 50;

static const int CHESS_FIELD_WIDTH = 8;
static const int CHESS_FIELD_HEIGHT = 8;

struct Contact {
	string name;
	string phone;
};

static void saveContact(Contact contact) {
	// Open stream to update file and save contacts
	std::ofstream file;
	file.open(FILENAME, std::fstream::app);

	// Write to file
	cout << "File found, writing to file..." << endl;

	file << contact.name << endl;
	file << contact.phone << endl;

	cout << file.is_open() << endl;

	// Close stream
	file.close();

};

// input with validation
static string validatedInput(string type) {
	bool has_input_attempt = false;

	string output;

	string label;
	string error_message;
	regex regex;

	if (type == "name") {
		regex = nameRegex;
		label = "Type contact name:";
		error_message = "Invalid name!";
	}
	else if (type == "phone") {
		regex = phoneRegex;
		label = "Type phone number:";
		error_message = "Invalid phone number!";
	}

	// Loop until input is valid
	do
	{
		// Print error message if input was invalid
		if (has_input_attempt) {
			cout << error_message << endl;
		}
		// Set input attempt to true
		has_input_attempt = true;

		// Print label
		cout << label << endl;
		// Get input
		std::getline(std::cin, output);
	} while (!std::regex_match(output, regex));

	return output;
}

static void Chess__RenderBoard(SDL_Renderer* renderer) {
	for (int i = 0; i < CHESS_FIELD_HEIGHT; i++)
	{
		int y = i * CHESS_ITEM_HEIGHT;
		bool isHorizontalEven = i % 2 == 0;
		for (int k = 0; k < CHESS_FIELD_WIDTH; k++)
		{

			int x = k * CHESS_ITEM_WIDTH;
			SDL_Rect* rect = new SDL_Rect();
			rect->x = x;
			rect->y = y;
			rect->w = CHESS_ITEM_WIDTH;
			rect->h = CHESS_ITEM_HEIGHT;

			bool isEven = isHorizontalEven ? k % 2 == 0 : k % 2 != 0;
			if (isEven) {
				// Если четное, то белый
				SDL_SetRenderDrawColor(renderer, 255, 206, 158, 255);
				SDL_RenderFillRect(renderer, rect);
			}
			else {
				// Если нечетное, то черный
				SDL_SetRenderDrawColor(renderer, 209, 139, 71, 255);
				SDL_RenderDrawRect(renderer, rect);
			}
		}
	}
}

int main(int argc, char* args[])
{
	int windowWidth = CHESS_ITEM_WIDTH * CHESS_FIELD_WIDTH;
	int windowHeight = CHESS_ITEM_HEIGHT * CHESS_FIELD_HEIGHT;

	SDL_Window* window = nullptr;
	SDL_Renderer* renderer = nullptr;

	// Инициализируем SDL
	if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
		std::cout << "SDL_Init Error: " << SDL_GetError() << std::endl;
		return 1;
	}

	// Создаем окно и рендерер
	SDL_CreateWindowAndRenderer(windowWidth, windowHeight, 0, &window, &renderer);
	SDL_SetWindowTitle(window, "Chess");
	// Устанавливаем цвет фона
	SDL_SetRenderDrawColor(renderer, 209, 139, 71, 255);

	// Очищаем экран(Устанавливаем цвет фона)
	SDL_RenderClear(renderer);

	// Устанавливаем цвет рисования
	SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);

	// Рисуем точку в центре экрана
	SDL_RenderDrawPoint(renderer, windowWidth / 2, windowHeight / 2);

	SDL_RenderPresent(renderer);

	Chess__RenderBoard(renderer);

	Chess__RenderItemsList(renderer);

	// Обновляем экран
	SDL_RenderPresent(renderer);

	SDL_Event event;
	bool isRunning = true;
	while (isRunning) {
		while (SDL_PollEvent(&event)) {
			switch (event.type) {
			case SDL_MOUSEBUTTONDOWN:
				// Обрабатываем нажатие кнопки мыши
				printf("Mouse button down\n");
				std::cout << "Mouse button button" << event.button.button << std::endl;
				std::cout << "Mouse button x" << event.button.x << std::endl;
				std::cout << "Mouse button y" << event.button.y << std::endl;
				break;
			case SDL_MOUSEBUTTONUP:
				// Обрабатываем отпускание кнопки мыши
				break;
			case SDL_MOUSEMOTION:
				// Обрабатываем движение мыши
				break;
			case SDL_QUIT:
				isRunning = false;
				break;
			case SDL_KEYDOWN:
				if (event.key.keysym.sym == SDLK_ESCAPE) {
					isRunning = false;
				}
				// Обрабатываем нажатие клавиши
				break;
			}
		}
		SDL_RenderPresent(renderer);
	}
	SDL_DestroyRenderer(renderer);
	SDL_DestroyWindow(window);
	SDL_Quit();


	/*Contact contact;

	contact.name = validatedInput("name");

	contact.phone = validatedInput("phone");

	saveContact(contact);

	cout << "Contact with name \"" << contact.name << "\" saved!" << endl;*/

	return 0;
}
