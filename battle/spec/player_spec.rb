require './lib/player'

  describe Player do

    subject(:james) { Player.new('james') }
    subject(:bear) { Player.new('bear')}

    it "name" do
      expect(subject.name).to eq 'james'
    end

    it 'returns the hit points' do
      expect(james.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
    describe '#attack' do
      it 'damages the player' do
        expect(bear).to receive(:receive_damage)
        james.attack(bear)
      end
    end

    describe '#receive_damage' do
      it 'reduces the player hit points' do
        expect { bear.receive_damage }.to change { bear.hit_points }.by(-10)
      end
    end
  end
