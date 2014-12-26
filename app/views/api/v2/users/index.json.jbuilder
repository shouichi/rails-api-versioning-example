json.users @users, partial: 'api/v1/users/user', as: :user

json.metadata do
  json.page do
    json.next users_path(page: @users.next_page)
  end
end
