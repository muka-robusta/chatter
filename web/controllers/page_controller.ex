defmodule Chatter.PageController do
  use Chatter.Web, :controller
  alias Chatter.Topic

  def index(conn, _params) do
    topics = Repo.all(Topic)
    render conn, "index.html", topics
  end

  def new(conn, _params) do
  	
  end

end
