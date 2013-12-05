require 'spec_helper'
require_relative '../lib/linked_list'

describe LinkedList do

  describe '#unshift' do
    context 'when a list is empty' do
      it "adds a new node as the root" do
        ll = LinkedList.new
        ll.unshift("A")
        expect(ll.root.value).to eq("A")
      end
    end
  end

end
