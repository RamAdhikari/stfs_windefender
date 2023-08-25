Facter.add(:notepadpp) do
    confine :kernel => :windows # restricts module to windows
    setcode do
      require 'facter/util/registry'
      begin
        Facter::Util::Registry.hklm_read('SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Notepad++', 'DisplayVersion')
      rescue
        nil
      end
    end
end
