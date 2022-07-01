Remove-Alias -Name ni -Force
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
function Git-Fyde {
  git config --global user.email hongbin@fydeos.io
  git config --global user.name hongbin
}
function Git-MuShan {
  git config --global user.email zhmushan@qq.com
  git config --global user.name zhmushan
}
