import requests
from bs4 import BeautifulSoup
import json

def get_image_metadata(page_url):
    response = requests.get(page_url)
    soup = BeautifulSoup(response.content, 'html.parser')

    # Extract the actual image URL
    image_url_tag = soup.find('link', {'rel': 'image_src'})
    image_url = image_url_tag['href'] if image_url_tag else None

    title_tag = soup.find('meta', {'property': 'og:title'})
    title = title_tag['content'] if title_tag else None

    author_tag = soup.find('a', {'class': 'mw-userlink'})
    author = author_tag.text if author_tag else None

    license_tag = soup.find('a', {'title': 'Creative Commons Attribution-ShareAlike 4.0 International'})
    license_name = license_tag.text if license_tag else None
    license_url = license_tag['href'] if license_tag else None

    return {
        'url': image_url,
        'title': title,
        'author': author,
        'source': page_url,
        'license': {
            'name': license_name,
            'url': license_url,
        }
    }

def update_people_metadata(people):
    for person in people:
        if person['image']['url']:
            metadata = get_image_metadata(person['image']['url'])
            person['image'].update(metadata)
    return people

# Load your data from a JSON file
with open('people.json', 'r') as file:
    people = json.load(file)

# Update the metadata
updated_people = update_people_metadata(people)

# Save the updated data back to the JSON file
with open('updated_people.json', 'w') as file:
    json.dump(updated_people, file, indent=4)

print("Metadata updated successfully.")
