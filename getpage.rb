require "cgi/util"
htmlfile = "cnbeta.html"
textfile = "cnbeta.txt"

html  = File.read(htmlfile)
File.open(textfile, "w") do |f|
  in_header = true #确认当匹配h1标签后，不会再进行标签匹配，增加效率
  html.each_line do |line|
    if in_header && /<title>cnBeta.COM_中文业界资讯站/ !~ line #!~如果匹配不到返回true
      next
    else
      in_header = false
    end
    break if /<footer class/ =~ line  #如果匹配到footer则不再读取后面的东西
    line.gsub!(/<[^>]+>/, '') #删除所有的标签
    esc_line = CGI.unescapeHTML(line)#这个方法可以将html标签的&amp, &lt等字符转义为&, <等
    f.write esc_line
  end
end
