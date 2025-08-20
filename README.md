# Rails Wrap-Up Lab

Congratulations on reaching the end of the Rails intro series!

## What’s in this App?

- A fully working blog app with Articles and Comments
- You can create, view, edit, and delete articles
- You can add comments to articles

---

## Lab Goal: Add Author Tracking to Articles

Your goal for this lab is to extend the blog app so that each article tracks its author. You will:

- Add an `author` field to articles (string, required)
- Update forms and views to display and collect the author
- Add a validation to ensure every article has an author
- Update the index and show pages to display the author

By the end, every article should show who wrote it, and users should not be able to create or update an article without providing an author name.

---


## Setup Instructions

1. **Install dependencies:**
	```sh
	bundle install
	```
2. **Run the server:**
	```sh
	bin/rails server
	```
	Visit [http://localhost:3000](http://localhost:3000) in your browser.

---

## Your Challenge

Complete all of the following:

1. **Add an author field to articles:**
	- Generate a migration to add an `author` column (string) to the `articles` table.
	- Run the migration.
2. **Update the Article model:**
	- Add a validation to require the presence of `author`.
3. **Update forms and views:**
	- Update the new/edit forms to include a field for `author`.
	- Show the author on the index and show pages for articles.
4. **Test your work:**
	- Try to create or edit an article without an author—there should be an error.
	- All articles should display their author.

---

## Next Steps

- Explore more in the [Rails Guides](https://guides.rubyonrails.org/)
- Build your own projects!

---

Happy coding!
