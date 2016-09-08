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
  module IAM
    class Resource

      # @param options ({})
      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Client.new(options)
      end

      # @return [Client]
      def client
        @client
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [required, String] :old_password
      #   The IAM user\'s current password.
      # @option options [required, String] :new_password
      #   The new password. The new password must conform to the AWS account\'s
      #   password policy, if one exists.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of almost any printable ASCII character from the space
      #   (\\u0020) through the end of the ASCII character range (\\u00FF). You
      #   can also include the tab (\\u0009), line feed (\\u000A), and carriage
      #   return (\\u000D) characters. Although any of these characters are
      #   valid in a password, note that many tools, such as the AWS Management
      #   Console, might restrict the ability to enter certain characters
      #   because they have special meaning within that tool.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def change_password(options = {})
        resp = @client.change_password(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :account_alias
      #   The account alias to create.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of lowercase letters, digits, and dashes. You cannot start
      #   or finish with a dash, nor can you have two dashes in a row.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def create_account_alias(options = {})
        resp = @client.create_account_alias(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Integer] :minimum_password_length
      #   The minimum number of characters allowed in an IAM user password.
      #
      #   Default value: 6
      # @option options [Boolean] :require_symbols
      #   Specifies whether IAM user passwords must contain at least one of the
      #   following non-alphanumeric characters:
      #
      #   ! @ # $ % ^ &amp;amp; \* ( ) \_ + - = \[ \] \\\{ \\} \| \'
      #
      #   Default value: false
      # @option options [Boolean] :require_numbers
      #   Specifies whether IAM user passwords must contain at least one numeric
      #   character (0 to 9).
      #
      #   Default value: false
      # @option options [Boolean] :require_uppercase_characters
      #   Specifies whether IAM user passwords must contain at least one
      #   uppercase character from the ISO basic Latin alphabet (A to Z).
      #
      #   Default value: false
      # @option options [Boolean] :require_lowercase_characters
      #   Specifies whether IAM user passwords must contain at least one
      #   lowercase character from the ISO basic Latin alphabet (a to z).
      #
      #   Default value: false
      # @option options [Boolean] :allow_users_to_change_password
      #   Allows all IAM users in your account to use the AWS Management Console
      #   to change their own passwords. For more information, see [Letting IAM
      #   Users Change Their Own Passwords][1] in the *IAM User Guide*.
      #
      #   Default value: false
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html
      # @option options [Integer] :max_password_age
      #   The number of days that an IAM user password is valid. The default
      #   value of 0 means IAM user passwords never expire.
      #
      #   Default value: 0
      # @option options [Integer] :password_reuse_prevention
      #   Specifies the number of previous passwords that IAM users are
      #   prevented from reusing. The default value of 0 means IAM users are not
      #   prevented from reusing previous passwords.
      #
      #   Default value: 0
      # @option options [Boolean] :hard_expiry
      #   Prevents IAM users from setting a new password after their password
      #   has expired.
      #
      #   Default value: false
      # @return [AccountPasswordPolicy]
      def create_account_password_policy(options = {})
        resp = @client.update_account_password_policy(options)
        AccountPasswordPolicy.new(client: @client)
      end

      # @param [Hash] options ({})
      # @option options [String] :path
      #   The path to the group. For more information about paths, see [IAM
      #   Identifiers][1] in the *IAM User Guide*.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/).
      #
      #   The [regex pattern][2] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      #   [2]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :group_name
      #   The name of the group to create. Do not include the path in this
      #   value.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-.
      #   The group name must be unique within the account. Group names are not
      #   distinguished by case. For example, you cannot create groups named
      #   both \"ADMINS\" and \"admins\".
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [Group]
      def create_group(options = {})
        resp = @client.create_group(options)
        Group.new(
          name: options[:group_name],
          data: resp.data.group,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [required, String] :instance_profile_name
      #   The name of the instance profile to create.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [String] :path
      #   The path to the instance profile. For more information about paths,
      #   see [IAM Identifiers][1] in the *IAM User Guide*.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/).
      #
      #   The [regex pattern][2] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      #   [2]: http://wikipedia.org/wiki/regex
      # @return [InstanceProfile]
      def create_instance_profile(options = {})
        resp = @client.create_instance_profile(options)
        InstanceProfile.new(
          name: options[:instance_profile_name],
          data: resp.data.instance_profile,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [required, String] :policy_name
      #   The friendly name of the policy.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [String] :path
      #   The path for the policy.
      #
      #   For more information about paths, see [IAM Identifiers][1] in the *IAM
      #   User Guide*.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/).
      #
      #   The [regex pattern][2] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      #   [2]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :policy_document
      #   The JSON policy document that you want to use as the content for the
      #   new policy.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of any printable ASCII character ranging from the space
      #   character (\\u0020) through end of the ASCII character range
      #   (\\u00FF). It also includes the special characters tab (\\u0009), line
      #   feed (\\u000A), and carriage return (\\u000D).
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [String] :description
      #   A friendly description of the policy.
      #
      #   Typically used to store information about the permissions defined in
      #   the policy. For example, \"Grants access to production DynamoDB
      #   tables.\"
      #
      #   The policy description is immutable. After a value is assigned, it
      #   cannot be changed.
      # @return [Policy]
      def create_policy(options = {})
        resp = @client.create_policy(options)
        Policy.new(
          arn: resp.data.policy.arn,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path
      #   The path to the role. For more information about paths, see [IAM
      #   Identifiers][1] in the *IAM User Guide*.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/).
      #
      #   The [regex pattern][2] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      #   [2]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :role_name
      #   The name of the role to create.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-.
      #   Role names are not distinguished by case. For example, you cannot
      #   create roles named both \"PRODROLE\" and \"prodrole\".
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :assume_role_policy_document
      #   The trust relationship policy document that grants an entity
      #   permission to assume the role.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of any printable ASCII character ranging from the space
      #   character (\\u0020) through end of the ASCII character range
      #   (\\u00FF). It also includes the special characters tab (\\u0009), line
      #   feed (\\u000A), and carriage return (\\u000D).
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [Role]
      def create_role(options = {})
        resp = @client.create_role(options)
        Role.new(
          name: options[:role_name],
          data: resp.data.role,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [required, String] :saml_metadata_document
      #   An XML document generated by an identity provider (IdP) that supports
      #   SAML 2.0. The document includes the issuer\'s name, expiration
      #   information, and keys that can be used to validate the SAML
      #   authentication response (assertions) that are received from the IdP.
      #   You must generate the metadata document using the identity management
      #   software that is used as your organization\'s IdP.
      #
      #   For more information, see [About SAML 2.0-based Federation][1] in the
      #   *IAM User Guide*
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html
      # @option options [required, String] :name
      #   The name of the provider to create.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [SamlProvider]
      def create_saml_provider(options = {})
        resp = @client.create_saml_provider(options)
        SamlProvider.new(
          arn: resp.data.saml_provider_arn,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path
      #   The path for the server certificate. For more information about paths,
      #   see [IAM Identifiers][1] in the *IAM User Guide*.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/). The [regex pattern][2] for this parameter is a string of
      #   characters consisting of either a forward slash (/) by itself or a
      #   string that must begin and end with forward slashes, containing any
      #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #   <note markdown="1"> If you are uploading a server certificate specifically for use with
      #   Amazon CloudFront distributions, you must specify a path using the
      #   `--path` option. The path must begin with `/cloudfront` and must
      #   include a trailing slash (for example, `/cloudfront/test/`).
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      #   [2]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :server_certificate_name
      #   The name for the server certificate. Do not include the path in this
      #   value. The name of the certificate cannot contain any spaces.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :certificate_body
      #   The contents of the public key certificate in PEM-encoded format.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of any printable ASCII character ranging from the space
      #   character (\\u0020) through end of the ASCII character range
      #   (\\u00FF). It also includes the special characters tab (\\u0009), line
      #   feed (\\u000A), and carriage return (\\u000D).
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :private_key
      #   The contents of the private key in PEM-encoded format.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of any printable ASCII character ranging from the space
      #   character (\\u0020) through end of the ASCII character range
      #   (\\u00FF). It also includes the special characters tab (\\u0009), line
      #   feed (\\u000A), and carriage return (\\u000D).
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [String] :certificate_chain
      #   The contents of the certificate chain. This is typically a
      #   concatenation of the PEM-encoded public key certificates of the chain.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of any printable ASCII character ranging from the space
      #   character (\\u0020) through end of the ASCII character range
      #   (\\u00FF). It also includes the special characters tab (\\u0009), line
      #   feed (\\u000A), and carriage return (\\u000D).
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [ServerCertificate]
      def create_server_certificate(options = {})
        resp = @client.upload_server_certificate(options)
        ServerCertificate.new(
          name: options[:server_certificate_name],
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :user_name
      #   The name of the user the signing certificate is for.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :certificate_body
      #   The contents of the signing certificate.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of any printable ASCII character ranging from the space
      #   character (\\u0020) through end of the ASCII character range
      #   (\\u00FF). It also includes the special characters tab (\\u0009), line
      #   feed (\\u000A), and carriage return (\\u000D).
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [SigningCertificate]
      def create_signing_certificate(options = {})
        resp = @client.upload_signing_certificate(options)
        SigningCertificate.new(
          id: resp.data.certificate.certificate_id,
          data: resp.data.certificate,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path
      #   The path for the user name. For more information about paths, see [IAM
      #   Identifiers][1] in the *IAM User Guide*.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/).
      #
      #   The [regex pattern][2] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      #   [2]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :user_name
      #   The name of the user to create.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-.
      #   User names are not distinguished by case. For example, you cannot
      #   create users named both \"TESTUSER\" and \"testuser\".
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [User]
      def create_user(options = {})
        resp = @client.create_user(options)
        User.new(
          name: options[:user_name],
          data: resp.data.user,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path
      #   The path for the virtual MFA device. For more information about paths,
      #   see [IAM Identifiers][1] in the *IAM User Guide*.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/).
      #
      #   The [regex pattern][2] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      #   [2]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :virtual_mfa_device_name
      #   The name of the virtual MFA device. Use with path to uniquely identify
      #   a virtual MFA device.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [VirtualMfaDevice]
      def create_virtual_mfa_device(options = {})
        resp = @client.create_virtual_mfa_device(options)
        VirtualMfaDevice.new(
          serial_number: resp.data.virtual_mfa_device.serial_number,
          data: resp.data.virtual_mfa_device,
          client: @client
        )
      end

      # @!group Associations

      # @return [AccountPasswordPolicy]
      def account_password_policy
        AccountPasswordPolicy.new(client: @client)
      end

      # @return [AccountSummary]
      def account_summary
        AccountSummary.new(client: @client)
      end

      # @return [CurrentUser]
      def current_user
        CurrentUser.new(client: @client)
      end

      # @param [String] name
      # @return [Group]
      def group(name)
        Group.new(
          name: name,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. For example, the prefix
      #   `/division_abc/subdivision_xyz/` gets all groups whose path starts
      #   with `/division_abc/subdivision_xyz/`.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/), listing all groups. The [regex pattern][1] for this
      #   parameter is a string of characters consisting of either a forward
      #   slash (/) by itself or a string that must begin and end with forward
      #   slashes, containing any ASCII character from the ! (\\u0021) thru the
      #   DEL character (\\u007F), including most punctuation characters,
      #   digits, and upper and lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [Group::Collection]
      def groups(options = {})
        batches = Enumerator.new do |y|
          resp = @client.list_groups(options)
          resp.each_page do |page|
            batch = []
            page.data.groups.each do |g|
              batch << Group.new(
                name: g.group_name,
                data: g,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Group::Collection.new(batches)
      end

      # @param [String] name
      # @return [InstanceProfile]
      def instance_profile(name)
        InstanceProfile.new(
          name: name,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. For example, the prefix
      #   `/application_abc/component_xyz/` gets all instance profiles whose
      #   path starts with `/application_abc/component_xyz/`.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/), listing all instance profiles. The [regex pattern][1] for
      #   this parameter is a string of characters consisting of either a
      #   forward slash (/) by itself or a string that must begin and end with
      #   forward slashes, containing any ASCII character from the ! (\\u0021)
      #   thru the DEL character (\\u007F), including most punctuation
      #   characters, digits, and upper and lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [InstanceProfile::Collection]
      def instance_profiles(options = {})
        batches = Enumerator.new do |y|
          resp = @client.list_instance_profiles(options)
          resp.each_page do |page|
            batch = []
            page.data.instance_profiles.each do |i|
              batch << InstanceProfile.new(
                name: i.instance_profile_name,
                data: i,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        InstanceProfile::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [String] :scope
      #   The scope to use for filtering the results.
      #
      #   To list only AWS managed policies, set `Scope` to `AWS`. To list only
      #   the customer managed policies in your AWS account, set `Scope` to
      #   `Local`.
      #
      #   This parameter is optional. If it is not included, or if it is set to
      #   `All`, all policies are returned.
      # @option options [Boolean] :only_attached
      #   A flag to filter the results to only the attached policies.
      #
      #   When `OnlyAttached` is `true`, the returned list contains only the
      #   policies that are attached to an IAM user, group, or role. When
      #   `OnlyAttached` is `false`, or when the parameter is not included, all
      #   policies are returned.
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. This parameter is optional.
      #   If it is not included, it defaults to a slash (/), listing all
      #   policies. The [regex pattern][1] for this parameter is a string of
      #   characters consisting of either a forward slash (/) by itself or a
      #   string that must begin and end with forward slashes, containing any
      #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [Policy::Collection]
      def policies(options = {})
        batches = Enumerator.new do |y|
          resp = @client.list_policies(options)
          resp.each_page do |page|
            batch = []
            page.data.policies.each do |p|
              batch << Policy.new(
                arn: p.arn,
                data: p,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Policy::Collection.new(batches)
      end

      # @param [String] arn
      # @return [Policy]
      def policy(arn)
        Policy.new(
          arn: arn,
          client: @client
        )
      end

      # @param [String] name
      # @return [Role]
      def role(name)
        Role.new(
          name: name,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. For example, the prefix
      #   `/application_abc/component_xyz/` gets all roles whose path starts
      #   with `/application_abc/component_xyz/`.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/), listing all roles. The [regex pattern][1] for this
      #   parameter is a string of characters consisting of either a forward
      #   slash (/) by itself or a string that must begin and end with forward
      #   slashes, containing any ASCII character from the ! (\\u0021) thru the
      #   DEL character (\\u007F), including most punctuation characters,
      #   digits, and upper and lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [Role::Collection]
      def roles(options = {})
        batches = Enumerator.new do |y|
          resp = @client.list_roles(options)
          resp.each_page do |page|
            batch = []
            page.data.roles.each do |r|
              batch << Role.new(
                name: r.role_name,
                data: r,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Role::Collection.new(batches)
      end

      # @param [String] arn
      # @return [SamlProvider]
      def saml_provider(arn)
        SamlProvider.new(
          arn: arn,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [SamlProvider::Collection]
      def saml_providers(options = {})
        batches = Enumerator.new do |y|
          batch = []
          resp = @client.list_saml_providers(options)
          resp.data.saml_provider_list.each do |s|
            batch << SamlProvider.new(
              arn: s.arn,
              client: @client
            )
          end
          y.yield(batch)
        end
        SamlProvider::Collection.new(batches)
      end

      # @param [String] name
      # @return [ServerCertificate]
      def server_certificate(name)
        ServerCertificate.new(
          name: name,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. For example:
      #   `/company/servercerts` would get all server certificates for which the
      #   path starts with `/company/servercerts`.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/), listing all server certificates. The [regex pattern][1] for
      #   this parameter is a string of characters consisting of either a
      #   forward slash (/) by itself or a string that must begin and end with
      #   forward slashes, containing any ASCII character from the ! (\\u0021)
      #   thru the DEL character (\\u007F), including most punctuation
      #   characters, digits, and upper and lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [ServerCertificate::Collection]
      def server_certificates(options = {})
        batches = Enumerator.new do |y|
          resp = @client.list_server_certificates(options)
          resp.each_page do |page|
            batch = []
            page.data.server_certificate_metadata_list.each do |s|
              batch << ServerCertificate.new(
                name: s.server_certificate_name,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        ServerCertificate::Collection.new(batches)
      end

      # @param [String] name
      # @return [User]
      def user(name)
        User.new(
          name: name,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. For example:
      #   `/division_abc/subdivision_xyz/`, which would get all user names whose
      #   path starts with `/division_abc/subdivision_xyz/`.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/), listing all user names. The [regex pattern][1] for this
      #   parameter is a string of characters consisting of either a forward
      #   slash (/) by itself or a string that must begin and end with forward
      #   slashes, containing any ASCII character from the ! (\\u0021) thru the
      #   DEL character (\\u007F), including most punctuation characters,
      #   digits, and upper and lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [User::Collection]
      def users(options = {})
        batches = Enumerator.new do |y|
          resp = @client.list_users(options)
          resp.each_page do |page|
            batch = []
            page.data.users.each do |u|
              batch << User.new(
                name: u.user_name,
                data: u,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        User::Collection.new(batches)
      end

      # @param [String] serial_number
      # @return [VirtualMfaDevice]
      def virtual_mfa_device(serial_number)
        VirtualMfaDevice.new(
          serial_number: serial_number,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [String] :assignment_status
      #   The status (`Unassigned` or `Assigned`) of the devices to list. If you
      #   do not specify an `AssignmentStatus`, the action defaults to `Any`
      #   which lists both assigned and unassigned virtual MFA devices.
      # @return [VirtualMfaDevice::Collection]
      def virtual_mfa_devices(options = {})
        batches = Enumerator.new do |y|
          resp = @client.list_virtual_mfa_devices(options)
          resp.each_page do |page|
            batch = []
            page.data.virtual_mfa_devices.each do |v|
              batch << VirtualMfaDevice.new(
                serial_number: v.serial_number,
                data: v,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        VirtualMfaDevice::Collection.new(batches)
      end

    end
  end
end