require 'spec_helper_acceptance'

describe 'rhel_mrepo_profiles class' do
  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      class { 'rhel_mrepo_profiles': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures  => true)
      apply_manifest(pp, :catch_failures  => true)
      apply_manifest(pp, :catch_changes   => true)
    end

  end
end
