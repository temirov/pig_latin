require 'spec_helper'
require_relative '../pig_latin'

describe PigLatin do
  context '.translate' do
    it 'returns a word "ellohay" responding to word "hello"' do
      expect(PigLatin.translate('hello')).to eq("ellohay")
    end
    it 'returns a sentence "ellohay orldway" responding to the sentence "hello world"' do
      expect(PigLatin.translate("hello world")).to eq("ellohay orldway")
    end
    it 'returns a sentence "Ellohay Orldway", considering capital words, responding to the sentence "Hello World"' do
      expect(PigLatin.translate("Hello World")).to eq("Ellohay Orldway")
    end
    it 'returns a sentence "Ellohay, Orldway!", capital words and punctuations marks, responding to the sentence "Hello, World!"' do
      expect(PigLatin.translate("Hello, World!")).to eq("Ellohay, Orldway!")
    end
  end
end
