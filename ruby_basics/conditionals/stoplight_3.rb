stoplight = ['green', 'yellow', 'red'].sample

case stoplight 
when 'green' then p 'Go!' 
when 'yellow' then p 'Slow down!'
else p 'Stop!' 
end