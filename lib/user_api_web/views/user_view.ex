defmodule UserApiWeb.UserView do
  use UserApiWeb, :view
  alias UserApiWeb.UserView

  def render("index.json", %{tb_user: tb_user}) do
    %{data: render_many(tb_user, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email}
  end
end
