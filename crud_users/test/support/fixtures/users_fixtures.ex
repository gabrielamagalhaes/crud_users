defmodule CrudUsers.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CrudUsers.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        description: "some description",
        email: "some email",
        name: "some name"
      })
      |> CrudUsers.Users.create_user()

    user
  end
end
