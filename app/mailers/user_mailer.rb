class UserMailer < ActionMailer::Base
  default :from => "info@palmling.com"
  
  def welcome_email(user)
    mail(:to => user.email, :bcc => "info@palmling.com", :subject => "Thank you for Signing up with PalmLing for Skype!", 
    :content_type => "text/html", :body => "Dear #{user.name}, <br/><br/>Thank you for registering with 
    <a href='http://palmling.com'>PalmLing</a>. 
    PalmLing delivers real-time access to a community of human translators to facilitate cross language conversations. 
    As a valued member of #{user.company_id}, you will have free access to the service for 5 days. 
    This promotion is being provided in honor of BUSINESS_LEAD_AND_TITLE__provided_by_PL_team. 
    <br/>
    After 5 days, this phone number will expire and you can register for a premium account by visiting
    <a href='http://palmling.com'>PalmLing.com</a>
    To access our global community of interpreters, dial XXX-XXX-XXXX (THIS IS THE NUMBER THAT WILL CHANGE FOR EACH COMPANY). 
    Please note, to be considered for promotions, discounts and other prizes, please make sure your email has been registered at
    (exampleLink.com/companies/company_name).
    <br/><br/>Thank you, <br/><br/>
    The PalmLing Team, <br/><a href='http://www.palmling.com'>PalmLing<a/>. <br/><br/>
    <a href='https://twitter.com/#!/palmling'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/palmling'>Twitter</a><br/>
    <a href='http://www.facebook.com/pages/PalmLing/108198825934073'>
    <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/pages/PalmLing/108198825934073'>Facebook</a>")    
  end

  # def test_email(user)
  #     mail(:to => 'maxswell@gmail.com', :bcc => "nick@palmling.com", :subject => "Thank you for Signing up with PalmLing for Skype!", :content_type => "text/html",
  #      :body => "Thank you for signing up with <a href='http://www.palmling.com'>PalmLing for Skype</a>. Your Skype name is: Kevin <br/>
  #      <br/>Once your payment is processed and confirmed, a member of the PalmLing team will follow-up with you with details on how to
  #      access our global community of translators. Please allow 1 hour for us to respond to you. <br/><br/>Thank you, <br/><br/>
  #      The PalmLing Team, <br/><a href='http://www.palmling.com'>PalmLing<a/>. <br/><br/>
  #      <a href='https://twitter.com/#!/palmling'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/palmling'>PalmLing on Twitter</a><br/>
  #      <a href='http://www.facebook.com/pages/PalmLing/108198825934073'>
  #      <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/pages/PalmLing/108198825934073'>PalmLing on FaceBook</a>")
  #   end
end