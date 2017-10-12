class Encrypt
  def self.hide(string, shift = 1)
    alphabet = Array('a'..'z')
    encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
    string.chars.map { |c| encrypter.fetch(c, ' ') }.join
  end
end
