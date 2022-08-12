Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"

# A user can see all the lists
# GET "lists"
# A user can see the details of a given list and its name
# GET "lists/42"
# A user can create a new list
# GET "lists/new"
# POST "lists"
  resources :lists, only: [:index, :show, :new, :create, :destroy]  do
    resources :bookmarks, only: [:new, :create,]
  end
  resources :bookmarks, only: [:destroy]
# user can add a new bookmark (movie/list pair) to an existing list
# Checkout simple_form docs about f.association to easily create a select dropdown for our list of movies.
# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
# A user can delete a bookmark from a list. How can we make a delete link again?
# DELETE "bookmarks/25"


end
