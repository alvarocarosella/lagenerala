Given(/^Arranco la partida$/) do
  visit'/'
end

Then(/^Tengo que ver "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^Dado1 sale (\d+)$/) do |numero|
  @@dado1.ponerValor numero.to_i
end

When(/^Dado2 sale (\d+)$/) do |numero|
  @@dado2.ponerValor numero.to_i
end
