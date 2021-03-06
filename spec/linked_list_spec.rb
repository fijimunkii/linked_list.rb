require 'spec_helper'
require_relative '../lib/linked_list'

describe LinkedList do

  describe '#to_a' do
    let(:ll) do
      ll = LinkedList.new
      ll.unshift("C")
      ll.unshift("B")
      ll.unshift("A")
      ll
    end
    it "returns an array containing 'A', 'B', 'C'" do
      expect(ll.to_a).to eq(["A", "B", "C"])
    end
  end

  describe '#unshift' do

    context 'when a list is empty' do
      it "adds a new node as the root" do
        @ll = LinkedList.new
        @ll.unshift("A")
        expect(@ll.root.value).to eq("A")
      end
    end

    context 'when a list has one element' do
      before(:each) do
        @ll = LinkedList.new
        @ll.unshift("A")
      end
      it "adds a new node as the root" do
        @ll.unshift("B")
        expect(@ll.root.value).to eq("B")
      end
      it "the previous element is still there" do
        @ll.unshift("B")
        expect(@ll.root.nxt.value).to eq("A")
      end
    end
  end

end
