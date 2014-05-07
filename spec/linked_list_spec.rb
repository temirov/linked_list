require 'spec_helper'
require_relative '../linked_list'

describe LinkedList do
  before :each do
    @list_original = LinkedList.new('a', LinkedList.new('b', LinkedList.new('c')))
  end

  context '#reverse the list' do
    context '#reverse' do
      it 'should non-destructively reverse the list and return the new head' do
        # ex: Link.new('a', Link.new('b')).reverse == Link.new('b', Link.new('a'))
        list_reversed = LinkedList.new('c', LinkedList.new('b', LinkedList.new('a')))
        expect(@list_original.reverse).to eq list_reversed
      end
    end
  end

  context 'Compare two lists' do
    context '#==' do
      it 'Should return true if every link is the same' do
        list_copy = LinkedList.new('a', LinkedList.new('b', LinkedList.new('c')))
        expect(@list_original == list_copy).to be true
      end
      it 'Should return false if not every link is the same' do
        expect(@list_original == @list_original.reverse).to be false
      end
    end
  end

  context 'convert to String' do
    context '#to_s' do
      it 'should return "a -> b -> c"' do
        expect(@list_original.to_s).to eq "a -> b -> c"
      end
    end
  end
end
