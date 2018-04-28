class WarningSuppressor
  IGNORES = [
    /QFont::setPixelSize: Pixel size <= 0/,
    /CoreText performance note:/,
    /Heya! This page is using wysihtml5/,
    /You must provide a success callback to the Chooser to see the files that the user selects/
  ]

  class << self
    def write(message)
      if suppress?(message)
        0
      else
        puts(message)
        1
      end
    end

    private

      def suppress?(message)
        IGNORES.any? { |re| message =~ re }
      end
  end
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app,
    inspector: true,
    js_errors: true,
    window_size: RESOLUTION,
    timeout: 5.minutes.to_i,
    phantomjs_options: ['--ignore-ssl-errors=yes'],
    phantomjs_logger: WarningSuppressor
  )
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :chrome_headless do |app|
  args = []
  args << 'headless'
  args << 'disable-gpu'
  args << 'no-sandbox'
  args << "window-size=#{RESOLUTION.join(',')}"

  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: args }
  )

  Capybara::Selenium::Driver.new(app,
    browser: :chrome,
    desired_capabilities: capabilities
  )
end

Capybara.javascript_driver = JS_DRIVER
