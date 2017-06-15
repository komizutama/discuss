defmodule Discuss.TopicController do
  use Discuss.Web, :controller #In this line, phoenix reaches into web.ex folder notices that it's designed a controller... does lots of controller set up. fixes the init error
  
  alias Discuss.Topic

  def new(conn, params) do
    changeset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html"
  end
end