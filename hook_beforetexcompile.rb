#!/usr/bin/env ruby
# coding: utf-8
File.open("#{ARGV[0]}/furukawa.tex", 'r+') do |f|
  s = f.read.sub('\chapter{',
                 '\chapter[技術書典10報告 (furukawa)]{')
  f.rewind
  f.print s
end
