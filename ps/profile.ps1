Remove-Alias -Name ni -Force
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
function Git-MuShan-Global {
  git config --global user.email zhmushan@qq.com
  git config --global user.name zhmushan
}
