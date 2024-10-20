<a href="https://youtu.be/hWDvS_Mp6gc">
  <img src="https://markdown-videos-api.jorgenkh.no/url?url=https%3A%2F%2Fyoutu.be%2FhWDvS_Mp6gc" alt="Qubes OS: Security Oriented Operating System" title="Qubes OS: Security Oriented Operating System"/>
</a>


  For the Fedora-based dom0:
  
  sudo qubes-dom0-update && sudo dnf -y update && sudo dnf -y upgrade && sudo dnf -y clean all
  
  For every Fedora-based domU:
  
  sudo dnf -y update && sudo dnf -y upgrade && sudo dnf -y clean all
  
  For every Debian-based domU:
  
  sudo apt-get -y update && sudo apt-get -y dist-upgrade && sudo apt-get -y autoclean