require_relative 'shift_cipher'
class Radio
  attr_reader :volume, :band, :freq

  @@allowed_am_freq = 540.0..1600.0
  @@default_am_freq = 666.4
  @@allowed_fm_freq = 88.0..108.0
  @@default_fm_freq = 100.5

  @@audio_samples = [
    "Down With The Sickness",
    "Fucked With an Anchor",
    "Livgardet",
    "Hail To The King",
    "Hootsforce",
    "Lullaby",
    "Blind And Frozen",
    "Boulevard of Broken Dreams"
  ]

  def self.fm
    @freq = 88.0
    Radio.new("FM")
  end
  def self.am
    @freq = 540.0
    Radio.new("AM")
  end

  def initialize(band)
    self.volume = 5
    @band = band
    @freq = default_freq
  end

  def volume=(value)
    return if value < 1 || value > 10
    @volume = value
  end

  def freq=(value)
    value = value.to_f
    value = @freq unless allowed_frequencies.include?(value)
    @freq = value.to_f
  end

  def crank_it_up
    @volume = 11
  end

  def status
    "station: #{freq} #{band}, volume: #{volume}"
  end

  def play
    puts "The radio plays: #{@@audio_samples.sample}"
  end

  private
  def default_freq
    @band == "AM" ? @@default_am_freq : @@default_fm_freq
  end
  def allowed_frequencies
    @band == "AM" ? @@allowed_am_freq : @@allowed_fm_freq
  end

  def audio_stream
    @@audio_samples.sample
  end
end
