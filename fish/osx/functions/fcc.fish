# file content count
function fcc
  find $argv -type f -exec cat {} + | wc -l
end
