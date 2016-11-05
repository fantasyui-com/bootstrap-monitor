all: alpha-4.css alpha-5.css
	diff-css alpha-4.css alpha-5.css

alpha-4.zip:
	wget -O alpha-4.zip https://github.com/twbs/bootstrap/releases/download/v4.0.0-alpha.4/bootstrap-4.0.0-alpha.4-dist.zip

alpha-4.css: alpha-4.zip
	unzip -pj alpha-4.zip bootstrap-4.0.0-alpha.4-dist/css/bootstrap.css > alpha-4.css

alpha-5.zip:
	wget -O alpha-5.zip https://github.com/twbs/bootstrap/releases/download/v4.0.0-alpha.5/bootstrap-4.0.0-alpha.5-dist.zip

alpha-5.css: alpha-5.zip
	unzip -pj alpha-5.zip bootstrap-4.0.0-alpha.5-dist/css/bootstrap.css > alpha-5.css

json: alpha-4.css alpha-5.css
	diff-css -r json alpha-4.css alpha-5.css

install:
	npm i -g diff-css
