#include "FirstProject.h"

using namespace std;

static const string FILENAME = "contacts.txt";
static const auto phoneRegex = std::regex("(?:([+]\\d{1,4})[-.\\s]?)?(?:[(](\\d{1,3})[)][-.\\s]?)?(\\d{1,4})[-.\\s]?(\\d{1,4})[-.\\s]?(\\d{1,9})");
static const auto nameRegex = std::regex("^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$");

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

int main()
{
	Contact contact;
	
	contact.name = validatedInput("name");

	contact.phone = validatedInput( "phone");
	
	saveContact(contact);

	cout << "Contact with name \"" << contact.name << "\" saved!" << endl;

	return 0;
}
