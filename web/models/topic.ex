# relate to postgress database and validation
defmodule Discuss.Topic do
  use Discuss.Web, :model

  # model schema look in topics db, look for field called title and everything should be a string
  schema "topics" do
    field :title, :string
    belongs_to :user, Discuss.User
  end

  #validation

  def changeset(struct, params \\ %{}) do #\\ is to give a default value
    struct #Represents a record in our database, params contains the properties we want to update the struct with what is saved is the changeset
    |> cast(params, [:title]) #what produces a changeset (gets from struct to params [where we want to go])
    |> validate_required([:title]) #establishes whether the changeset is valid
  end
end
