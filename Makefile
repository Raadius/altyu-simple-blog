PORT?=3000
RACK_ENV?=development

render-build:
	bundle install
	bundle exec rails db:migrate

render-start:
	bundle exec puma -t 5:5 -p ${PORT} -e ${RACK_ENV}
