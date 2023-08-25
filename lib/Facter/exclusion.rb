osfamily = Facter.value('osfamily')
case osfamily
when 'windows'
  Facter.add('custom_fact') do
    setcode do
      begin
        value = nil
        Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\ServerInfo') do |regkey|
          value = regkey['value_name'].downcase
        end
        value
      rescue
        nil
      end
    end
  end
end

Facter.add('windows_edition_custom') do
  confine :osfamily => :windows
  setcode do
    'testvalue'
  end
end
