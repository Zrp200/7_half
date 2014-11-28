require "mail"
namespace 'travis' do
  task :email do
    mail = Mail.new do
      from 'zrp200@gmail.com'
      to 'michael.a.perlmutter.gmail.com'
      subject  "Released #{ENV['TRAVIS_TAG']}"
      body "`gem install 7_half`"
      body("`gem install 7_half --pre`") if ENV['TRAVIS_TAG'].include?('pre')
    end
    mail.delivery_method :sendmail
    mail.deliver
  end
end
