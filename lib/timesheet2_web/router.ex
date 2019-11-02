defmodule Timesheet2Web.Router do
  use Timesheet2Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :ajax do
    plug :accepts, ["json"]
    plug :fetch_session
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

 scope "/ajax", Timesheet2Web do
    pipe_through :ajax

    get "/", PageController, :index
    resources "/sheets",SheetController,
       only: [:new, :create, :index, :show, :update, :edit] 
    resources "/users", UserController,
       only: [:new, :create, :show, :index]
    resources "/tasks", TaskController,
	only: [:new, :create]
    resources "/sessions", SessionController, 
      only: [:create], singleton: true
  end


  scope "/", Timesheet2Web do
    pipe_through :browser
    get "/", PageController, :index
    get "/*path", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Timesheet2Web do
  #   pipe_through :api
  # end
end
