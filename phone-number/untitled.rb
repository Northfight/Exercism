
numbers = "(223) 456-7890"
p num = numbers.tr('^0-9', '')
p num[/^([2-9]\d\d){2}\d{4}$/]