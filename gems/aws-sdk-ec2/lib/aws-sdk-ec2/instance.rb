# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module EC2
    class Instance

      extend Aws::Deprecations

      # @overload def initialize(id, options = {})
      #   @param [String] id
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :id
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @id = extract_id(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def id
        @id
      end
      alias :instance_id :id

      # The ID of the AMI used to launch the instance.
      # @return [String]
      def image_id
        data.image_id
      end

      # The current state of the instance.
      # @return [Types::InstanceState]
      def state
        data.state
      end

      # The private DNS name assigned to the instance. This DNS name can only
      # be used inside the Amazon EC2 network. This name is not available
      # until the instance enters the `running` state. For EC2-VPC, this name
      # is only available if you\'ve enabled DNS hostnames for your VPC.
      # @return [String]
      def private_dns_name
        data.private_dns_name
      end

      # The public DNS name assigned to the instance. This name is not
      # available until the instance enters the `running` state. For EC2-VPC,
      # this name is only available if you\'ve enabled DNS hostnames for your
      # VPC.
      # @return [String]
      def public_dns_name
        data.public_dns_name
      end

      # The reason for the most recent state transition. This might be an
      # empty string.
      # @return [String]
      def state_transition_reason
        data.state_transition_reason
      end

      # The name of the key pair, if this instance was launched with an
      # associated key pair.
      # @return [String]
      def key_name
        data.key_name
      end

      # The AMI launch index, which can be used to find this instance in the
      # launch group.
      # @return [Integer]
      def ami_launch_index
        data.ami_launch_index
      end

      # The product codes attached to this instance, if applicable.
      # @return [Array<Types::ProductCode>]
      def product_codes
        data.product_codes
      end

      # The instance type.
      # @return [String]
      def instance_type
        data.instance_type
      end

      # The time the instance was launched.
      # @return [Time]
      def launch_time
        data.launch_time
      end

      # The location where the instance launched, if applicable.
      # @return [Types::Placement]
      def placement
        data.placement
      end

      # The kernel associated with this instance, if applicable.
      # @return [String]
      def kernel_id
        data.kernel_id
      end

      # The RAM disk associated with this instance, if applicable.
      # @return [String]
      def ramdisk_id
        data.ramdisk_id
      end

      # The value is `Windows` for Windows instances; otherwise blank.
      # @return [String]
      def platform
        data.platform
      end

      # The monitoring information for the instance.
      # @return [Types::Monitoring]
      def monitoring
        data.monitoring
      end

      # \[EC2-VPC\] The ID of the subnet in which the instance is running.
      # @return [String]
      def subnet_id
        data.subnet_id
      end

      # \[EC2-VPC\] The ID of the VPC in which the instance is running.
      # @return [String]
      def vpc_id
        data.vpc_id
      end

      # The private IP address assigned to the instance.
      # @return [String]
      def private_ip_address
        data.private_ip_address
      end

      # The public IP address assigned to the instance, if applicable.
      # @return [String]
      def public_ip_address
        data.public_ip_address
      end

      # The reason for the most recent state transition.
      # @return [Types::StateReason]
      def state_reason
        data.state_reason
      end

      # The architecture of the image.
      # @return [String]
      def architecture
        data.architecture
      end

      # The root device type used by the AMI. The AMI can use an EBS volume or
      # an instance store volume.
      # @return [String]
      def root_device_type
        data.root_device_type
      end

      # The root device name (for example, `/dev/sda1` or `/dev/xvda`).
      # @return [String]
      def root_device_name
        data.root_device_name
      end

      # Any block device mapping entries for the instance.
      # @return [Array<Types::InstanceBlockDeviceMapping>]
      def block_device_mappings
        data.block_device_mappings
      end

      # The virtualization type of the instance.
      # @return [String]
      def virtualization_type
        data.virtualization_type
      end

      # Indicates whether this is a Spot instance or a Scheduled Instance.
      # @return [String]
      def instance_lifecycle
        data.instance_lifecycle
      end

      # If the request is a Spot instance request, the ID of the request.
      # @return [String]
      def spot_instance_request_id
        data.spot_instance_request_id
      end

      # The idempotency token you provided when you launched the instance, if
      # applicable.
      # @return [String]
      def client_token
        data.client_token
      end

      # Any tags assigned to the instance.
      # @return [Array<Types::Tag>]
      def tags
        data.tags
      end

      # One or more security groups for the instance.
      # @return [Array<Types::GroupIdentifier>]
      def security_groups
        data.security_groups
      end

      # Specifies whether to enable an instance launched in a VPC to perform
      # NAT. This controls whether source/destination checking is enabled on
      # the instance. A value of `true` means checking is enabled, and `false`
      # means checking is disabled. The value must be `false` for the instance
      # to perform NAT. For more information, see [NAT Instances][1] in the
      # *Amazon Virtual Private Cloud User Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html
      # @return [Boolean]
      def source_dest_check
        data.source_dest_check
      end

      # The hypervisor type of the instance.
      # @return [String]
      def hypervisor
        data.hypervisor
      end

      # The IAM instance profile associated with the instance, if applicable.
      # @return [Types::IamInstanceProfile]
      def iam_instance_profile
        data.iam_instance_profile
      end

      # Indicates whether the instance is optimized for EBS I/O. This
      # optimization provides dedicated throughput to Amazon EBS and an
      # optimized configuration stack to provide optimal I/O performance. This
      # optimization isn\'t available with all instance types. Additional
      # usage charges apply when using an EBS Optimized instance.
      # @return [Boolean]
      def ebs_optimized
        data.ebs_optimized
      end

      # Specifies whether enhanced networking with the Intel 82599 Virtual
      # Function interface is enabled.
      # @return [String]
      def sriov_net_support
        data.sriov_net_support
      end

      # Specifies whether enhanced networking with ENA is enabled.
      # @return [Boolean]
      def ena_support
        data.ena_support
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {Instance}.
      # Returns `self` making it possible to chain methods.
      #
      #     instance.reload.data
      #
      # @return [self]
      def load
        resp = @client.describe_instances(instance_ids: [@id])
        @data = resp.reservations[0].instances[0]
        self
      end
      alias :reload :load

      # @return [Types::Instance]
      #   Returns the data for this {Instance}. Calls
      #   {Client#describe_instances} if {#data_loaded?} is `false`.
      def data
        load unless @data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @return [Boolean]
      #   Returns `true` if the Instance exists.
      def exists?
        begin
          wait_until_exists(max_attempts: 1)
          true
        rescue Aws::Waiters::Errors::UnexpectedError => e
          raise e.error
        rescue Aws::Waiters::Errors::WaiterFailed
          false
        end
      end

      # @param options ({})
      # @option options [Integer] :max_attempts (40)
      # @option options [Float] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [Instance]
      def wait_until_exists(options = {})
        waiter = Waiters::InstanceExists.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        resp = waiter.wait(instance_ids: [@id])
        Instance.new({
          id: @id,
          data: resp.data.reservations[0].instances[0],
          client: @client
        })
      end

      # @param options ({})
      # @option options [Integer] :max_attempts (40)
      # @option options [Float] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [Instance]
      def wait_until_running(options = {})
        waiter = Waiters::InstanceRunning.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        resp = waiter.wait(instance_ids: [@id])
        Instance.new({
          id: @id,
          data: resp.data.reservations[0].instances[0],
          client: @client
        })
      end

      # @param options ({})
      # @option options [Integer] :max_attempts (40)
      # @option options [Float] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [Instance]
      def wait_until_stopped(options = {})
        waiter = Waiters::InstanceStopped.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        resp = waiter.wait(instance_ids: [@id])
        Instance.new({
          id: @id,
          data: resp.data.reservations[0].instances[0],
          client: @client
        })
      end

      # @param options ({})
      # @option options [Integer] :max_attempts (40)
      # @option options [Float] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [Instance]
      def wait_until_terminated(options = {})
        waiter = Waiters::InstanceTerminated.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        resp = waiter.wait(instance_ids: [@id])
        Instance.new({
          id: @id,
          data: resp.data.reservations[0].instances[0],
          client: @client
        })
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :vpc_id
      #   The ID of a ClassicLink-enabled VPC.
      # @option options [required, Array<String>] :groups
      #   The ID of one or more of the VPC\'s security groups. You cannot
      #   specify security groups from a different VPC.
      # @return [Types::AttachClassicLinkVpcResult]
      def attach_classic_link_vpc(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.attach_classic_link_vpc(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :volume_id
      #   The ID of the EBS volume. The volume and instance must be within the
      #   same Availability Zone.
      # @option options [required, String] :device
      #   The device name to expose to the instance (for example, `/dev/sdh` or
      #   `xvdh`).
      # @return [Types::VolumeAttachment]
      def attach_volume(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.attach_volume(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [Types::GetConsoleOutputResult]
      def console_output(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.get_console_output(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :name
      #   A name for the new image.
      #
      #   Constraints: 3-128 alphanumeric characters, parentheses (()), square
      #   brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-),
      #   single quotes (\'), at-signs (@), or underscores(\_)
      # @option options [String] :description
      #   A description for the new image.
      # @option options [Boolean] :no_reboot
      #   By default, Amazon EC2 attempts to shut down and reboot the instance
      #   before creating the image. If the \'No Reboot\' option is set, Amazon
      #   EC2 doesn\'t shut down the instance before creating the image. When
      #   this option is used, file system integrity on the created image can\'t
      #   be guaranteed.
      # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
      #   Information about one or more block device mappings.
      # @return [Image]
      def create_image(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.create_image(options)
        Image.new(
          id: resp.data.image_id,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Array<Types::Tag>] :tags
      #   One or more tags. The `value` parameter is required, but if you don\'t
      #   want the tag to have a value, specify the parameter with no value, and
      #   we set the value to an empty string.
      # @return [Tag::Collection]
      def create_tags(options = {})
        batch = []
        options = Aws::Util.deep_merge(options, resources: [@id])
        resp = @client.create_tags(options)
        options[:tags].each do |t|
          batch << Tag.new(
            resource_id: @id,
            key: t[:key],
            value: t[:value],
            client: @client
          )
        end
        Tag::Collection.new([batch], size: batch.size)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :attribute
      #   The instance attribute.
      #
      #   Note: The `enaSupport` attribute is not supported at this time.
      # @return [Types::InstanceAttribute]
      def describe_attribute(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.describe_instance_attribute(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :vpc_id
      #   The ID of the VPC to which the instance is linked.
      # @return [Types::DetachClassicLinkVpcResult]
      def detach_classic_link_vpc(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.detach_classic_link_vpc(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :volume_id
      #   The ID of the volume.
      # @option options [String] :device
      #   The device name.
      # @option options [Boolean] :force
      #   Forces detachment if the previous detachment attempt did not occur
      #   cleanly (for example, logging into an instance, unmounting the volume,
      #   and detaching normally). This option can lead to data loss or a
      #   corrupted file system. Use this option only as a last resort to detach
      #   a volume from a failed instance. The instance won\'t have an
      #   opportunity to flush file system caches or file system metadata. If
      #   you use this option, you must perform file system check and repair
      #   procedures.
      # @return [Types::VolumeAttachment]
      def detach_volume(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.detach_volume(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [String] :attribute
      #   The name of the attribute.
      # @option options [String] :value
      #   A new value for the attribute. Use only with the `kernel`, `ramdisk`,
      #   `userData`, `disableApiTermination`, or
      #   `instanceInitiatedShutdownBehavior` attribute.
      # @option options [Array<Types::InstanceBlockDeviceMappingSpecification>] :block_device_mappings
      #   Modifies the `DeleteOnTermination` attribute for volumes that are
      #   currently attached. The volume must be owned by the caller. If no
      #   value is specified for `DeleteOnTermination`, the default is `true`
      #   and the volume is deleted when the instance is terminated.
      #
      #   To add instance store volumes to an Amazon EBS-backed instance, you
      #   must add them when you launch the instance. For more information, see
      #   [Updating the Block Device Mapping when Launching an Instance][1] in
      #   the *Amazon Elastic Compute Cloud User Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM
      # @option options [Types::AttributeBooleanValue] :source_dest_check
      #   Specifies whether source/destination checking is enabled. A value of
      #   `true` means that checking is enabled, and `false` means checking is
      #   disabled. This value must be `false` for a NAT instance to perform
      #   NAT.
      # @option options [Types::AttributeBooleanValue] :disable_api_termination
      #   If the value is `true`, you can\'t terminate the instance using the
      #   Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use
      #   this paramater for Spot Instances.
      # @option options [Types::AttributeValue] :instance_type
      #   Changes the instance type to the specified value. For more
      #   information, see [Instance Types][1]. If the instance type is not
      #   valid, the error returned is `InvalidInstanceAttributeValue`.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
      # @option options [Types::AttributeValue] :kernel
      #   Changes the instance\'s kernel to the specified value. We recommend
      #   that you use PV-GRUB instead of kernels and RAM disks. For more
      #   information, see [PV-GRUB][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
      # @option options [Types::AttributeValue] :ramdisk
      #   Changes the instance\'s RAM disk to the specified value. We recommend
      #   that you use PV-GRUB instead of kernels and RAM disks. For more
      #   information, see [PV-GRUB][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
      # @option options [Types::BlobAttributeValue] :user_data
      #   Changes the instance\'s user data to the specified value. If you are
      #   using an AWS SDK or command line tool, Base64-encoding is performed
      #   for you, and you can load the text from a file. Otherwise, you must
      #   provide Base64-encoded text.
      # @option options [Types::AttributeValue] :instance_initiated_shutdown_behavior
      #   Specifies whether an instance stops or terminates when you initiate
      #   shutdown from the instance (using the operating system command for
      #   system shutdown).
      # @option options [Array<String>] :groups
      #   \[EC2-VPC\] Changes the security groups of the instance. You must
      #   specify at least one security group, even if it\'s just the default
      #   security group for the VPC. You must specify the security group ID,
      #   not the security group name.
      # @option options [Types::AttributeBooleanValue] :ebs_optimized
      #   Specifies whether the instance is optimized for EBS I/O. This
      #   optimization provides dedicated throughput to Amazon EBS and an
      #   optimized configuration stack to provide optimal EBS I/O performance.
      #   This optimization isn\'t available with all instance types. Additional
      #   usage charges apply when using an EBS Optimized instance.
      # @option options [Types::AttributeValue] :sriov_net_support
      #   Set to `simple` to enable enhanced networking with the Intel 82599
      #   Virtual Function interface for the instance.
      #
      #   There is no way to disable enhanced networking with the Intel 82599
      #   Virtual Function interface at this time.
      #
      #   This option is supported only for HVM instances. Specifying this
      #   option with a PV instance can make it unreachable.
      # @option options [Types::AttributeBooleanValue] :ena_support
      #   Set to `true` to enable enhanced networking with ENA for the instance.
      #
      #   This option is supported only for HVM instances. Specifying this
      #   option with a PV instance can make it unreachable.
      # @return [EmptyStructure]
      def modify_attribute(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.modify_instance_attribute(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [Types::MonitorInstancesResult]
      def monitor(options = {})
        options = Aws::Util.deep_merge(options, instance_ids: [@id])
        resp = @client.monitor_instances(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [Types::GetPasswordDataResult]
      def password_data(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.get_password_data(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [EmptyStructure]
      def reboot(options = {})
        options = Aws::Util.deep_merge(options, instance_ids: [@id])
        resp = @client.reboot_instances(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :status
      #   The status of all instances listed.
      # @option options [Time,DateTime,Date,Integer,String] :start_time
      #   The time at which the reported instance health state began.
      # @option options [Time,DateTime,Date,Integer,String] :end_time
      #   The time at which the reported instance health state ended.
      # @option options [required, Array<String>] :reason_codes
      #   One or more reason codes that describes the health state of your
      #   instance.
      #
      #   * `instance-stuck-in-state`\: My instance is stuck in a state.
      #
      #   * `unresponsive`\: My instance is unresponsive.
      #
      #   * `not-accepting-credentials`\: My instance is not accepting my
      #     credentials.
      #
      #   * `password-not-available`\: A password is not available for my
      #     instance.
      #
      #   * `performance-network`\: My instance is experiencing performance
      #     problems which I believe are network related.
      #
      #   * `performance-instance-store`\: My instance is experiencing
      #     performance problems which I believe are related to the instance
      #     stores.
      #
      #   * `performance-ebs-volume`\: My instance is experiencing performance
      #     problems which I believe are related to an EBS volume.
      #
      #   * `performance-other`\: My instance is experiencing performance
      #     problems.
      #
      #   * `other`\: \[explain using the description parameter\]
      # @option options [String] :description
      #   Descriptive text about the health state of your instance.
      # @return [EmptyStructure]
      def report_status(options = {})
        options = Aws::Util.deep_merge(options, instances: [@id])
        resp = @client.report_instance_status(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :attribute
      #   The attribute to reset.
      #
      #   <important markdown="1"> You can only reset the following attributes: `kernel` \| `ramdisk` \|
      #   `sourceDestCheck`. To change an instance attribute, use
      #   ModifyInstanceAttribute.
      #
      #    </important>
      # @return [EmptyStructure]
      def reset_attribute(options = {})
        options = options.merge(instance_id: @id)
        resp = @client.reset_instance_attribute(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [EmptyStructure]
      def reset_kernel(options = {})
        options = options.merge(
          instance_id: @id,
          attribute: "kernel"
        )
        resp = @client.reset_instance_attribute(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [EmptyStructure]
      def reset_ramdisk(options = {})
        options = options.merge(
          instance_id: @id,
          attribute: "ramdisk"
        )
        resp = @client.reset_instance_attribute(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [EmptyStructure]
      def reset_source_dest_check(options = {})
        options = options.merge(
          instance_id: @id,
          attribute: "sourceDestCheck"
        )
        resp = @client.reset_instance_attribute(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [String] :additional_info
      #   Reserved.
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [Types::StartInstancesResult]
      def start(options = {})
        options = Aws::Util.deep_merge(options, instance_ids: [@id])
        resp = @client.start_instances(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Boolean] :force
      #   Forces the instances to stop. The instances do not have an opportunity
      #   to flush file system caches or file system metadata. If you use this
      #   option, you must perform file system check and repair procedures. This
      #   option is not recommended for Windows instances.
      #
      #   Default: `false`
      # @return [Types::StopInstancesResult]
      def stop(options = {})
        options = Aws::Util.deep_merge(options, instance_ids: [@id])
        resp = @client.stop_instances(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [Types::TerminateInstancesResult]
      def terminate(options = {})
        options = Aws::Util.deep_merge(options, instance_ids: [@id])
        resp = @client.terminate_instances(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [Types::UnmonitorInstancesResult]
      def unmonitor(options = {})
        options = Aws::Util.deep_merge(options, instance_ids: [@id])
        resp = @client.unmonitor_instances(options)
        resp.data
      end

      # @!group Associations

      # @return [ClassicAddress, nil]
      def classic_address
        if data.public_ip_address
          ClassicAddress.new(
            public_ip: data.public_ip_address,
            client: @client
          )
        else
          nil
        end
      end

      # @return [Image, nil]
      def image
        if data.image_id
          Image.new(
            id: data.image_id,
            client: @client
          )
        else
          nil
        end
      end

      # @return [KeyPairInfo, nil]
      def key_pair
        if data.key_name
          KeyPairInfo.new(
            name: data.key_name,
            client: @client
          )
        else
          nil
        end
      end

      # @return [NetworkInterface::Collection]
      def network_interfaces
        batch = []
        data.network_interfaces.each do |n|
          batch << NetworkInterface.new(
            id: n.network_interface_id,
            data: n,
            client: @client
          )
        end
        NetworkInterface::Collection.new([batch], size: batch.size)
      end

      # @return [PlacementGroup, nil]
      def placement_group
        if data.placement.group_name
          PlacementGroup.new(
            name: data.placement.group_name,
            client: @client
          )
        else
          nil
        end
      end

      # @return [Subnet, nil]
      def subnet
        if data.subnet_id
          Subnet.new(
            id: data.subnet_id,
            client: @client
          )
        else
          nil
        end
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :volume_ids
      #   One or more volume IDs.
      # @return [Volume::Collection]
      def volumes(options = {})
        batches = Enumerator.new do |y|
          options = Aws::Util.deep_merge(options, filters: [{
            name: "attachment.instance-id",
            values: [@id]
          }])
          resp = @client.describe_volumes(options)
          resp.each_page do |page|
            batch = []
            page.data.volumes.each do |v|
              batch << Volume.new(
                id: v.volume_id,
                data: v,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Volume::Collection.new(batches)
      end

      # @return [Vpc, nil]
      def vpc
        if data.vpc_id
          Vpc.new(
            id: data.vpc_id,
            client: @client
          )
        else
          nil
        end
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :public_ips
      #   \[EC2-Classic\] One or more Elastic IP addresses.
      #
      #   Default: Describes all your Elastic IP addresses.
      # @option options [Array<String>] :allocation_ids
      #   \[EC2-VPC\] One or more allocation IDs.
      #
      #   Default: Describes all your Elastic IP addresses.
      # @return [VpcAddress::Collection]
      def vpc_addresses(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "instance-id",
            values: [@id]
          }])
          resp = @client.describe_addresses(options)
          resp.data.addresses.each do |a|
            batch << VpcAddress.new(
              allocation_id: a.allocation_id,
              data: a,
              client: @client
            )
          end
          y.yield(batch)
        end
        VpcAddress::Collection.new(batches)
      end

      # @deprecated
      # @api private
      def identifiers
        { id: @id }
      end
      deprecated(:identifiers)

      private

      def extract_id(args, options)
        value = args[0] || options.delete(:id)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :id"
        else
          msg = "expected :id to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      def yield_waiter_and_warn(waiter, &block)
        if !@waiter_block_warned
          msg = "pass options to configure the waiter; "
          msg << "yielding the waiter is deprecated"
          warn(msg)
          @waiter_block_warned = true
        end
        yield(waiter.waiter)
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<Instance>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

        # @!group Batch Actions

        # @return [void]
        def batch_create_tags
          batches.each do |batch|
            params = {}
            batch.each.with_index do |item, n|
              Aws::Util.deep_merge(params, {
              })
            end
            @client.operation_name(params)
          end
          nil
        end

        # @return [void]
        def batch_monitor
          batches.each do |batch|
            params = {}
            batch.each.with_index do |item, n|
              Aws::Util.deep_merge(params, {
              })
            end
            @client.operation_name(params)
          end
          nil
        end

        # @return [void]
        def batch_reboot
          batches.each do |batch|
            params = {}
            batch.each.with_index do |item, n|
              Aws::Util.deep_merge(params, {
              })
            end
            @client.operation_name(params)
          end
          nil
        end

        # @return [void]
        def batch_start
          batches.each do |batch|
            params = {}
            batch.each.with_index do |item, n|
              Aws::Util.deep_merge(params, {
              })
            end
            @client.operation_name(params)
          end
          nil
        end

        # @return [void]
        def batch_stop
          batches.each do |batch|
            params = {}
            batch.each.with_index do |item, n|
              Aws::Util.deep_merge(params, {
              })
            end
            @client.operation_name(params)
          end
          nil
        end

        # @return [void]
        def batch_terminate!
          batches.each do |batch|
            params = {}
            batch.each.with_index do |item, n|
              Aws::Util.deep_merge(params, {
              })
            end
            @client.operation_name(params)
          end
          nil
        end

        # @return [void]
        def batch_unmonitor
          batches.each do |batch|
            params = {}
            batch.each.with_index do |item, n|
              Aws::Util.deep_merge(params, {
              })
            end
            @client.operation_name(params)
          end
          nil
        end

        # @!endgroup

      end
    end
  end
end