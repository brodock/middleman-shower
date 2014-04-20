class Shower < Middleman::Extension
  option :presentation_title, 'Title', 'Presentation title'
  option :presentation_description, 'description', 'Presentation description that will show on slide listing'
  option :progress_bar, true, 'Show progress bar on slides?'

  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def slide_options
      extensions[:shower].options
    end

    # outputs slides in the slides folders
    def slides(folder = "slides")
      results = []
      Dir["./source/#{folder}/_*.html.*"].each do |slide_path|
        slide_path = slide_path.gsub("./source/", "").gsub("/_", "/").gsub(/$_/, "")
        results << slide_path
      end
      results
    end
  end
end

::Middleman::Extensions.register(:shower, Shower)
