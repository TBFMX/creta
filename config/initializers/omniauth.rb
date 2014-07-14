OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, ENV['G7wFqd9MDPhvIUVGu9T5nVBdF'], ENV['ot9gPzMWUGQMuRafg5vxAwWpFDVIVMLHSitR8uie1JAMJsuXl0']
	provider :google_oauth2, ENV['897257467068-npulc9dqjavi23kmp2sli8pn1vuppuhs.apps.googleusercontent.com'], ENV['4BMlC5_QjUh2JDA90UanCMu-']
	provider :facebook, '1451557391770177', '3607dfa33038469e7d37bd1b60961343'
	#provider :identity, on_failed_registration: lambda { |env|    UsersController.action(:new).call(env)}
end
