# Blink Drunk

Blind Drunk is a cocktail creating Web App in which you can create a cocktail and add ingredients doses.

## Motivation
I wanted to create a web app with multiple connected modles that stores persistant data.

## Installation

### Clone the repository
in your terminal:

```Ruby
git clone git@github.com:karmar4/BlindDrunk.git
cd project
```

### Check your Ruby version
in your terminal:

```
ruby -v
```

if you have a version below 2.5.1 install a leter version:

```
rbenv install 2.6.3
```

### install gems
in your terminal:
``` 
bundle install
```

```
touch .env
echo '.env*' >> .gitignore
```

You will have to create a free acount with [cloudinary](https://cloudinary.com/) or another cloud image hosting service
* copy your Environment variable URL into the .env file

"CLOUDINARY_URL=cloudinary://***************:***************************@dvlfueugu" *it should look something like this*

## Initialize the database
in your terminal:
```
brew install postgresql
brew services start postgresql
```

```
rails db:create db:migrate db:seed
```

## Serve
in your terminal:
``` 
rails s
```

## How it works
* open [http://localhost:3000](http://localhost:3000/)
* press the + button in the nav bar to create a new cocktail
* navigate into the cocktail show page by pressing on a cicktail card
* add ingredients on the form or delete them by pressing the x next to the ingredient

## Contributing
Anyone who would like to contribute is welcome to. For any major changes, please open an issue first to discuss what you would like to change.
