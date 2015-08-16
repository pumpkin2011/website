json.array!(@m_roles) do |m_role|
  json.extract! m_role, :id, :role_no, :role
  json.url m_role_url(m_role, format: :json)
end
