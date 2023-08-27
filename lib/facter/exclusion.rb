if Facter.value(:osfamily) == 'windows'
    reg_type=Win32::Registry::KEY_READ | 0x100
    reg_write=Win32::Registry::KEY_ALL_ACCESS | 0x100
Facter.add('windows_edition_custom') do
  confine :osfamily => :windows
  setcode do
    begin
      value = nil
      Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\Microsoft\Windows NT\CurrentVersion') do |regkey|
        value = regkey['EditionID']
      end
      value
    rescue
      nil
    end
  end
end
end
