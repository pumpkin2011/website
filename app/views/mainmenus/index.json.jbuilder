json.array!(@mainmenus) do |mainmenu|
  json.extract! mainmenu, :id, :content, :main_pic_url
  json.url mainmenu_url(mainmenu, format: :json)
end
