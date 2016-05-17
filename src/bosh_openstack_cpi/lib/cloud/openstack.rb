# Copyright (c) 2009-2013 VMware, Inc.
# Copyright (c) 2012 Piston Cloud Computing, Inc.

module Bosh
  module OpenStackCloud; end
end

require "fog/openstack"
require "httpclient"
require "json"
require "pp"
require "set"
require "tmpdir"
require "securerandom"
require "json"

require "common/exec"
require "common/thread_pool"
require "common/thread_formatter"

require "bosh/cpi/registry_client"
require "cloud"
require "cloud/openstack/helpers"
require "cloud/openstack/cloud"
require "cloud/openstack/openstack"
require "cloud/openstack/tag_manager"

require "cloud/openstack/network_configurator"
require "cloud/openstack/network"
require "cloud/openstack/dynamic_network"
require "cloud/openstack/manual_network"
require "cloud/openstack/vip_network"
require "cloud/openstack/excon_logging_instrumentor"
require "cloud/openstack/availability_zone_provider"
require "cloud/openstack/redacted_params"

require "cloud/openstack/monkey_patch"


module Bosh
  module Clouds
    OpenStack = Bosh::OpenStackCloud::Cloud
    Openstack = OpenStack # Alias needed for Bosh::Clouds::Provider.create method
  end
end
