# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.0.0](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/compare/v2.1.0...v3.0.0) (2024-09-20)


### ⚠ BREAKING CHANGES

* this change disables glacier transition rules by default since transitioning small objects is officially not recommended. it can be enabled by setting `var.audit_log_lifecycle_glacier_transition_days` to a positive number.
* resources regarding S3 bucket configurations need manual import after upgrade. See `docs/upgrade-1.0.md` for guidance.

### Features

* add "tags" argument ([9bee890](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/9bee890aeb15364da1a71aa97dc62c309be5e958))
* add a flag to enable force_destroy on S3 buckets ([91c50ed](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/91c50edac500ce93cc8e76625866afddc3c6f16d)), closes [#48](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/48)
* add a flag to enable/disable VPC Flow Logs ([#146](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/146)) ([d681d9f](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/d681d9f5556da3e761792db24d266114c270b256)), closes [#143](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/143)
* add a flag to toggle Security Hub ([#201](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/201)) ([7514a84](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/7514a84b01a8bb5a845c7e42993b4cd1faa4be3b))
* add an argument to specify target regions. ([2500dd7](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/2500dd7dc7dc466e2aee879b0734b5ccb6222511))
* add cloudtrail insight selector type specification ([#180](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/180)) ([60c75ab](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/60c75ab940671322d02bdcd02246cf7868d1998e))
* add eu-north-1 region support ([2a13893](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/2a138932c485952843896367f06ff424d61f3a26))
* add flag for disabling config-baseline ([#190](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/190)) ([4018bc0](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/4018bc046e988cb1c810441de20d5e708a437998))
* add flag to allow recording global resources in all regions ([#168](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/168)) ([d0805ec](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/d0805ec5650eee9e24ae9eecb0cec6802b25b88d))
* add functionality to manually enable/disable guardduty-baseline module ([#183](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/183)) ([3e648a6](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/3e648a6996ef3b7ff058b38e9f901e1d575b2f65))
* add IAM baseline module ([3593e1e](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/3593e1e72745d6d35a9817f9afa3efa76837e48f))
* add in support to enable 3rd party products ([#206](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/206)) ([32e3db0](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/32e3db09ebf298a6e94911d807723ae7f0a43dfe))
* add inputs to toggle submodules ([#240](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/240)) ([ceabfc7](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/ceabfc7c811b18ac00dffe7a1b16df0e258b6399))
* add kms_master_key_id to alarm baseline and config-baseline module ([#216](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/216)) ([46864f6](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/46864f6cebc63859f3a8d7fb6672f3e5e22065e5))
* add new S3 bucket configuration resources ([#261](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/261)) ([150a537](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/150a5374457667b7acd543f2ee653fdb616ad742))
* add option to publish VPC Flow Logs to either S3 or CW ([#151](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/151)) ([c1d81fa](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/c1d81fa622a316fc90cd7ec2755d44ef9e99a0dd)), closes [#144](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/144)
* add parameters to make role creations optional ([#127](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/127)) ([c149cd2](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/c149cd22beefd20c4795fc5fec2a34a28ccf4a61))
* add permissions boundaries for IAM entities support ([#288](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/288)) ([219f003](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/219f0032626a793b1c7ca304793d924b829b2c18))
* add S3 bucket key support ([#236](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/236)) ([fb0dd55](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/fb0dd5562e0c66c94f84aacadeab1862f55aac5f))
* add support for logging dynamodb events ([#207](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/207)) ([0a37c1d](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/0a37c1dfa546997ae18b9ca91d40ca40d1163c94))
* add tags to flow logs ([#120](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/120)) ([1c0e406](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/1c0e406fe50c072020880ad25458cb034dfa4af6))
* add tags to guardduty ([#121](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/121)) ([5a808e5](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/5a808e59b9888450cc0906fdcba3f4e86100d619))
* add the organizational AWS Config aggregated view ([b7db3db](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/b7db3dba5ef92f623157cce39223195f0da29c46))
* add various outputs ([c8c05b6](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/c8c05b6911fe684e59fb9344d024d5b6fad521db))
* add vpc_enable variable ([#170](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/170)) ([f680ad6](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/f680ad6b8d9dd965759249da7164c4f89f8387c5))
* add/enable ap-northeast-3 (Osaka) region ([#177](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/177)) ([1e6ab04](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/1e6ab043e659e7368e97bc637f622957d1587eb1))
* adds lambda function invocation logging ([#205](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/205)) ([cd07fe3](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/cd07fe3bf3370e7b4d6ba98736f3473e0291757d))
* allow enabling/disabling individual alarms ([#164](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/164)) ([1638655](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/16386552827528c85f60780cc0e6a487306c0cf9))
* allow member accounts access to the audit log bucket ([ee87366](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/ee873662b94817521bc9091aa46188d8cd8493ba))
* allow use of organization trail to be toggled via variable ([#259](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/259)) ([0b636bb](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/0b636bba145a3c47e91220ce62a807a40320e771))
* allow using an external bucket instead of creating a new one ([f2f8e4a](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/f2f8e4a2047733007e55c262dc7d70e83dd99614)), closes [#47](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/47)
* apply default subnet changes to existing subnets ([#237](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/237)) ([1b0f314](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/1b0f314f532ccd30f24a331a283af38b6dab0bc3)), closes [#198](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/198)
* apply tags to default network resources ([#133](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/133)) ([4214de4](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/4214de4b9ad83a4d9297c31d162c60190426dace)), closes [#123](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/123)
* associate members to master in SecurityHub ([#147](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/147)) ([4bea2ba](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/4bea2ba159293adf7c46d651c276f25018e63d48)), closes [#145](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/145)
* automatically accepts invite from the master ([#256](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/256)) ([aa478e1](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/aa478e13498493d413423454100d42d374f44bcc))
* automatically archive audit logs into Amazon Glacier ([3583ede](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/3583ede032814b5dde89dfbd47a981ccac65c17a))
* disable automatic public ip assignments in default subnets ([#189](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/189)) ([35603a7](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/35603a76287d20b5626323edf5a25c8353e7d4f7))
* do not setup CloudTrail for member accounts ([4579ba0](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/4579ba03a96ed4a66baf04d887f36fc8a114dbd7))
* enable access analyzer for org ([#167](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/167)) ([4f492e3](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/4f492e3886dcde822dfa432af8738a040c95bb0c)), closes [#166](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/166)
* enable AWS Config rules for monitoring ([0a5131c](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/0a5131cb4320c5943e1b6f72f657e4dbac759360))
* enable CIS benchmark v1.4.0 standard ([#308](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/308)) ([bb724cd](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/bb724cd7783ae3e645cbbb4468b367fc5095cb53))
* enable finding aggregator in the main region ([#241](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/241)) ([31eae8f](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/31eae8ffcd2e5ce9acef6696108f57b0b8382df0))
* enable GuardDuty in all regions ([00969b6](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/00969b6c275758f70d6d20c1fc136b8c7644188e))
* enable GuardDuty in eu-north-1 region ([5bb651d](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/5bb651d830829f3dbb2b9d1571daf61b83f5a8d8))
* enable GuardDuty in Paris region. ([2f6a7b8](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/2f6a7b86bce7b78b3307823ae36ecf14295811fe))
* enable Insights event logging by default ([#185](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/185)) ([854d9d1](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/854d9d1ad9e87b069a4b043fcd113d236d7f28e7))
* enable managed config rules for benchmark compliance ([5dc385e](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/5dc385e8ca11a8888397747cd07bd9cc279ee2bf))
* enable S3 account-level public block ([#188](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/188)) ([30d197a](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/30d197aa37c47619cc6d73fac6b6ea75e68e54db)), closes [#176](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/176)
* enable Security Hub in each region ([#105](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/105)) ([318ca1d](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/318ca1dc3d51f6dcd086659956d2945dbb766cff)), closes [#95](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/95)
* enable SecurityHub and CIS standard subscription ([6cafa6e](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/6cafa6eb37a3ff2425c64afcb587cab850ec3cc9)), closes [#23](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/23)
* enable versioning with secure buckets ([c3bd177](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/c3bd17786e1c37009d4ea1f8d1d4f45fa51ed44f))
* encrypt the sns topic ([#103](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/103)) ([ecd33c1](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/ecd33c1e4ee84c3ee3bb2d63f71171a3d70f0475)), closes [#94](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/94)
* enforce strong password policy by default ([#252](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/252)) ([6bc61ca](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/6bc61ca0b61b372ab2e7ba2f3dd4fa177ad62086))
* force using HTTPS to access the access log bucket ([#129](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/129)) ([c02f6a3](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/c02f6a3384f86d6dfa8e5771d67064fb8dd2a547))
* force using HTTPS to access the audit log bucket ([#128](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/128)) ([2573da4](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/2573da43547ab1e0eb6aa292d539da7ebc2ddf53))
* GuardDuty: Enable S3 events sources ([#209](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/209)) ([dad4821](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/dad482183469d76c38cff4a67ada94104b2485b9))
* make all roles to be optional ([#115](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/115)) ([ea475c5](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/ea475c571b4d6661b872fd89682995fb04dc9cb0))
* make audit log bucket access logs bucket name customizable ([#303](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/303)) ([07dc101](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/07dc101179fa2d1649cd987e3d8f3d269db546b8))
* make delivery of CloudTrail to CloudWatch Logs and SNS optional ([#117](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/117)) ([12b25f1](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/12b25f1c5842f0eff8ae874696d0f4a8268f9d51))
* make glacier transition rules optional ([#293](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/293)) ([f0cdf3e](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/f0cdf3e6294a97ef455cf5e313aba14bfba38467))
* new SecurityHub standards support ([#113](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/113)) ([e9b18fe](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/e9b18fe01d0c1c001ab3df1babe6a752b19fc26b))
* only include global resources in the specified region ([156c7b7](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/156c7b74796fed976080344d1a04c933940cf18c))
* optionally ignore SSO logins for MFA alarms ([#234](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/234)) ([cf9b14c](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/cf9b14c7a9d031f84528cc2b790951dff87e2e80))
* output an ID of the audit log bucket ([1221acf](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/1221acfa661b7ff715563ae65186e2d359cb612b))
* return resources as outputs instead of specific attributes ([385093a](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/385093a25eb8d4d99925a7f9f2197cd04a99872f))
* support GuardDuty master/member accounts ([6d40848](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/6d408489cb859202e7e97f24f773182a29fd086d))
* support organization trails ([3622b0d](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/3622b0df21951dd5735e15ab0091ca6a6adc91e8))
* take finding_publishing_frequency as an input variable ([9942e27](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/9942e278e5aa1bc26ecec6d1b4dcb0409982965d))
* upgrade to terraform 0.12 ([8718796](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/8718796af9713ad9f6d53c34c0db96ccadb88c84))
* use S3 lifecycle rule V2 ([#285](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/285)) ([2b471bd](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/2b471bd321f3f7503690076d9321aeca38401796))
* use the audit log bucket for Flow Logs by default ([#152](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/152)) ([de6e678](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/de6e678825889edb463775feab0689700817b20b))
* various updates to comply with CIS Benchmark v1.3.0 ([#131](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/131)) ([a52a098](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/a52a098f766f18a585bcf68b684a0065083cce76))


### Bug Fixes

* add a wildcard suffix to log group ARN ([#119](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/119)) ([0f1a8af](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/0f1a8afed9337e14ac73513dada5996d0a572ef1)), closes [#118](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/118)
* add in new region ([#91](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/91)) ([2276b6d](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/2276b6db68b055bfb7c94023fe293e22c21cd19d))
* adjust filter pattern for unauthorized_api_calls alarm ([#212](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/212)) ([3d5332a](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/3d5332a9dbb23dad19502de8e0a7feafc1eb947e))
* adjust passwort policy to match CIS 1.3+ ([#213](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/213)) ([7297a2b](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/7297a2b7499d154681a250c2ac6e1e036c5be622))
* adjust passwort policy to match CIS 1.3+ ([#214](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/214)) ([b363f5a](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/b363f5aa390ad8aa1201da167b5d4211f2b415bc))
* allow alarm variables to be set at top level module ([#178](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/178)) ([5c03791](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/5c037911c182b8f5d5549d0c5f31ceddebdbfe33))
* avoid for_each key error ([#273](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/273)) ([0122d6f](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/0122d6fcd00ecd1114a2d5e7853027ebb0322d71))
* broken output value ([671d684](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/671d6841204bbcd0c98bdbdc9865070e606a727b))
* Change how to workaround the default ACL issue. ([5c981b0](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/5c981b034b5bfbefc8802addf1adf6c7c074dfff)), closes [#17](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/17)
* create a global rule after recorders. ([51173ff](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/51173ffaac8b89a42954eb11c31d6d261a72ff0a))
* create a log group for VPC Flow Logs in each region ([ce67a3b](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/ce67a3b249e5289ee9ef65dd78283651d8fc51ec))
* deprecation warnings ([#140](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/140)) ([7cf8fc1](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/7cf8fc1b6aacbc7167732cc3c47d33c4e5240563))
* do not enable SecurityHub when not enabled ([#111](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/111)) ([42c9611](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/42c96111181042bb01a2a26ad24bf6814bae0bc7)), closes [#110](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/110)
* do not manage `datasources` in member accounts. ([#215](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/215)) ([6f18666](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/6f186668796a556f926bcbabd738276c0024a70b))
* do not override guardduty_master_account_id for simplicity ([126da70](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/126da70e0b8f48dae416c56dfef3c6555649a7a1))
* do not read AWS Organization when account_type is set to "individual" ([9c60572](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/9c605727a392a153fc156b014a2104b32521fa92))
* edge case when not logging to cloudwatch ([#161](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/161)) ([a87c731](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/a87c731f51909a773f8ee1bddd0f135f2b3e7d56))
* ensure to have the audit log bucket before CloudTrail ([#102](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/102)) ([892b0ab](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/892b0abe1b3c400b945da8b258beb138fd133b0a))
* incorrect references in external-bucket example ([050b73b](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/050b73b91e1e1d96af9a18d5714519650be924f6))
* insufficient permission to accept organization trails. ([a4828f7](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/a4828f71f7a984f3a2b4d92d7423b7880c553a6a))
* invalid reference when flow logs is disabled ([#157](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/157)) ([10c7ead](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/10c7ead4d6033ceec2583494fafde4640d721a96)), closes [#156](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/156)
* is_enabled flag with ap-northeast-3 ([#192](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/192)) ([89a2756](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/89a27560bd64444778eaacb890009231217ce735))
* logging policies when using custom prefixes ([#141](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/141)) ([423215c](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/423215c597b2c6a9b546d760bce3298433fad358))
* make `sns_topic_kms_master_key_id` optional ([#219](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/219)) ([55e6f29](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/55e6f29e49e1b21d53d1f1a6bd989f6ab5a462a6))
* mark `var.member_accounts` required ([#272](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/272)) ([8612941](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/8612941317db8c5f3eb82fd8c5218b8ef5a5d41f))
* no findings aggregator for member accounts ([#257](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/257)) ([85864f5](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/85864f5c1e59fcd7f38bd4b0482691402cdcd956)), closes [#254](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/254)
* omit GuardDuty config for eu-west-3 region until supported ([258bb5a](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/258bb5adc11d3bb1a1a7f84739b658899a5b64a8))
* permissions for organization trail ([d68aed3](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/d68aed31231a8426c21f318469716a85feaf872e))
* prevent AWS Config to fire alarms ([#139](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/139)) ([3d57fcc](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/3d57fcca5e747f428019d92d4f1833239771ef89))
* remove `aws_default_vpc` dependency ([#238](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/238)) ([0c39831](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/0c39831bdf971ffd955d0f3ca79a7cc4de289ce5))
* remove a default subnet resource ([d9ccfc8](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/d9ccfc838f091c5e78dad84c8d0ffff07f39749a))
* remove a redundant Config rule ([#132](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/132)) ([d93a11c](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/d93a11c5a9755001c648c8e97cfd313a8fe4ba18))
* require AWS provider v4.1.0 ([#268](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/268)) ([05dd88c](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/05dd88c22a363125c8ce89235ac44866f5911cb3))
* require AWS provider v4.2.0 ([#270](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/270)) ([3c30413](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/3c304136cf332eebf40c0eb0ee0ba819a72dea41))
* set the minimum terraform version to 1.1.4 ([#255](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/255)) ([4d3cbd4](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/4d3cbd46466267d34722f08e01e589c1d14d0d65))
* support standard options for ap-east-1 ([c5394a5](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/c5394a51938312ea31264468b78988dfb615a418))
* temporarily disable mfa_delete on secure buckets ([583f76d](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/583f76df30af347cc70822b497cfde658764b255))
* the condition to use the organization trail ([#265](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/265)) ([5f63932](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/5f63932e29067ed44947de815cf76e1338c7956e))
* the minimum required version of the AWS provider ([#227](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/227)) ([4fcada9](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/4fcada952edd3650690c4928dc7f141899df4760)), closes [#226](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/226)
* typo ([#203](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/203)) ([51d4629](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/51d462976d84fdea54b47d80dcabbf680badcdb8))
* update var names in the CI script ([000643d](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/000643d86b88fb71b01586218cc377623e8a323e))
* upgrade minimum provider requirements ([#248](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/248)) ([6742a37](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/6742a371027d368afb4967e17a646fe4244a6ea9))
* upgrade the AWS provider to v4.3 ([#287](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/287)) ([271d99e](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/271d99ef6206fab0886f6961674340e986b5bc0c))
* use CIS recommended filter pattern ([#239](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/239)) ([3366cac](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/3366cacbd64e98d2a0200551f9b004fa7c33f27b))
* use count instead of `var.enabled` ([#262](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/262)) ([8fda7c7](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/8fda7c7717a641f8d3d7561a534570824949f00d))
* use the same CMK for encrypting the SNS topic ([#104](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/104)) ([505b748](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/505b7486f4f4d42319a8cdc5e16221ce49c2cf86))
* when VPC is disabled, disable vpc logging for it ([#197](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/issues/197)) ([09e5d75](https://github.com/VerticeOne/fork-terraform-aws-secure-baseline/commit/09e5d7557a4e67370762dca36b7d943c6d1ff1f1))

## [2.1.0](https://github.com/nozaq/terraform-aws-secure-baseline/compare/v2.0.0...v2.1.0) (2022-12-03)


### Features

* enable CIS benchmark v1.4.0 standard ([#308](https://github.com/nozaq/terraform-aws-secure-baseline/issues/308)) ([bb724cd](https://github.com/nozaq/terraform-aws-secure-baseline/commit/bb724cd7783ae3e645cbbb4468b367fc5095cb53))
* make audit log bucket access logs bucket name customizable ([#303](https://github.com/nozaq/terraform-aws-secure-baseline/issues/303)) ([07dc101](https://github.com/nozaq/terraform-aws-secure-baseline/commit/07dc101179fa2d1649cd987e3d8f3d269db546b8))

## [2.0.0](https://github.com/nozaq/terraform-aws-secure-baseline/compare/v1.1.0...v2.0.0) (2022-06-05)


### ⚠ BREAKING CHANGES

* this change disables glacier transition rules by default since transitioning small objects is officially not recommended. it can be enabled by setting `var.audit_log_lifecycle_glacier_transition_days` to a positive number.

### Features

* add permissions boundaries for IAM entities support ([#288](https://github.com/nozaq/terraform-aws-secure-baseline/issues/288)) ([219f003](https://github.com/nozaq/terraform-aws-secure-baseline/commit/219f0032626a793b1c7ca304793d924b829b2c18))
* make glacier transition rules optional ([#293](https://github.com/nozaq/terraform-aws-secure-baseline/issues/293)) ([f0cdf3e](https://github.com/nozaq/terraform-aws-secure-baseline/commit/f0cdf3e6294a97ef455cf5e313aba14bfba38467))

## [1.1.0](https://github.com/nozaq/terraform-aws-secure-baseline/compare/v1.0.1...v1.1.0) (2022-04-16)


### Features

* use S3 lifecycle rule V2 ([#285](https://github.com/nozaq/terraform-aws-secure-baseline/issues/285)) ([2b471bd](https://github.com/nozaq/terraform-aws-secure-baseline/commit/2b471bd321f3f7503690076d9321aeca38401796))


### Bug Fixes

* upgrade the AWS provider to v4.3 ([#287](https://github.com/nozaq/terraform-aws-secure-baseline/issues/287)) ([271d99e](https://github.com/nozaq/terraform-aws-secure-baseline/commit/271d99ef6206fab0886f6961674340e986b5bc0c))

## [1.0.1](https://github.com/nozaq/terraform-aws-secure-baseline/compare/v1.0.0...v1.0.1) (2022-03-06)
### Bug Fixes
- avoid for_each key error ([#273](https://github.com/nozaq/terraform-aws-secure-baseline/issues/273)) ([0122d6f](https://github.com/nozaq/terraform-aws-secure-baseline/commit/0122d6fcd00ecd1114a2d5e7853027ebb0322d71))
- mark `var.member_accounts` required ([#272](https://github.com/nozaq/terraform-aws-secure-baseline/issues/272)) ([8612941](https://github.com/nozaq/terraform-aws-secure-baseline/commit/8612941317db8c5f3eb82fd8c5218b8ef5a5d41f))

## [1.0.0] - 2022-02-19
### Feat
- add new S3 bucket configuration resources ([#261](https://github.com/nozaq/terraform-aws-secure-baseline/issues/261))
- allow use of organization trail to be toggled via variable ([#259](https://github.com/nozaq/terraform-aws-secure-baseline/issues/259))

### Fix
- require AWS provider v4.2.0 ([#270](https://github.com/nozaq/terraform-aws-secure-baseline/issues/270))
- require AWS provider v4.1.0 ([#268](https://github.com/nozaq/terraform-aws-secure-baseline/issues/268))
- the condition to use the organization trail ([#265](https://github.com/nozaq/terraform-aws-secure-baseline/issues/265))
- use count instead of `var.enabled` ([#262](https://github.com/nozaq/terraform-aws-secure-baseline/issues/262))

### Refactor
- remove `destination_options` ([#267](https://github.com/nozaq/terraform-aws-secure-baseline/issues/267))
- explicitly define a format for FlowLogs ([#264](https://github.com/nozaq/terraform-aws-secure-baseline/issues/264))
- replace deprecated arguments ([#263](https://github.com/nozaq/terraform-aws-secure-baseline/issues/263))

### BREAKING CHANGE

resources regarding S3 bucket configurations need manual import
after upgrade. See `docs/upgrade-1.0.md` for guidance.


<a name="0.34.0"></a>
## [0.34.0] - 2022-01-22
### Feat
- automatically accepts invite from the master ([#256](https://github.com/nozaq/terraform-aws-secure-baseline/issues/256))
- enforce strong password policy by default ([#252](https://github.com/nozaq/terraform-aws-secure-baseline/issues/252))

### Fix
- no findings aggregator for member accounts ([#257](https://github.com/nozaq/terraform-aws-secure-baseline/issues/257))
- set the minimum terraform version to 1.1.4 ([#255](https://github.com/nozaq/terraform-aws-secure-baseline/issues/255))
- upgrade minimum provider requirements ([#248](https://github.com/nozaq/terraform-aws-secure-baseline/issues/248))


<a name="0.33.0"></a>
## [0.33.0] - 2022-01-10
### Refactor
- add tflint checks ([#246](https://github.com/nozaq/terraform-aws-secure-baseline/issues/246))
- re-organize locals ([#243](https://github.com/nozaq/terraform-aws-secure-baseline/issues/243))


<a name="0.32.0"></a>
## [0.32.0] - 2022-01-08
### Feat
- enable finding aggregator in the main region ([#241](https://github.com/nozaq/terraform-aws-secure-baseline/issues/241))


<a name="0.31.0"></a>
## [0.31.0] - 2022-01-08
### Feat
- add inputs to toggle submodules ([#240](https://github.com/nozaq/terraform-aws-secure-baseline/issues/240))
- optionally ignore SSO logins for MFA alarms ([#234](https://github.com/nozaq/terraform-aws-secure-baseline/issues/234))
- apply default subnet changes to existing subnets ([#237](https://github.com/nozaq/terraform-aws-secure-baseline/issues/237))

### Fix
- use CIS recommended filter pattern ([#239](https://github.com/nozaq/terraform-aws-secure-baseline/issues/239))
- remove `aws_default_vpc` dependency ([#238](https://github.com/nozaq/terraform-aws-secure-baseline/issues/238))

### Refactor
- use module count instead of having ennabled variable in each submodule. ([#195](https://github.com/nozaq/terraform-aws-secure-baseline/issues/195))


<a name="0.30.0"></a>
## [0.30.0] - 2021-11-23
### Feat
- add S3 bucket key support ([#236](https://github.com/nozaq/terraform-aws-secure-baseline/issues/236))

### Fix
- the minimum required version of the AWS provider ([#227](https://github.com/nozaq/terraform-aws-secure-baseline/issues/227))


<a name="0.29.2"></a>
## [0.29.2] - 2021-09-18

<a name="0.29.1"></a>
## [0.29.1] - 2021-09-18
### Fix
- make `sns_topic_kms_master_key_id` optional ([#219](https://github.com/nozaq/terraform-aws-secure-baseline/issues/219))


<a name="0.29.0"></a>
## [0.29.0] - 2021-09-17
### Feat
- add kms_master_key_id to alarm baseline and config-baseline module ([#216](https://github.com/nozaq/terraform-aws-secure-baseline/issues/216))


<a name="0.28.0"></a>
## [0.28.0] - 2021-09-11
### Feat
- GuardDuty: Enable S3 events sources ([#209](https://github.com/nozaq/terraform-aws-secure-baseline/issues/209))
- add support for logging dynamodb events ([#207](https://github.com/nozaq/terraform-aws-secure-baseline/issues/207))
- add in support to enable 3rd party products ([#206](https://github.com/nozaq/terraform-aws-secure-baseline/issues/206))
- adds lambda function invocation logging ([#205](https://github.com/nozaq/terraform-aws-secure-baseline/issues/205))
- add a flag to toggle Security Hub ([#201](https://github.com/nozaq/terraform-aws-secure-baseline/issues/201))

### Fix
- do not manage `datasources` in member accounts. ([#215](https://github.com/nozaq/terraform-aws-secure-baseline/issues/215))
- adjust passwort policy to match CIS 1.3+ ([#214](https://github.com/nozaq/terraform-aws-secure-baseline/issues/214))
- adjust filter pattern for unauthorized_api_calls alarm ([#212](https://github.com/nozaq/terraform-aws-secure-baseline/issues/212))
- adjust passwort policy to match CIS 1.3+ ([#213](https://github.com/nozaq/terraform-aws-secure-baseline/issues/213))
- typo ([#203](https://github.com/nozaq/terraform-aws-secure-baseline/issues/203))


<a name="0.27.1"></a>
## [0.27.1] - 2021-07-03
### Fix
- when VPC is disabled, disable vpc logging for it ([#197](https://github.com/nozaq/terraform-aws-secure-baseline/issues/197))


<a name="0.27.0"></a>
## [0.27.0] - 2021-06-27
### Feat
- add flag for disabling config-baseline ([#190](https://github.com/nozaq/terraform-aws-secure-baseline/issues/190))

### Fix
- is_enabled flag with ap-northeast-3 ([#192](https://github.com/nozaq/terraform-aws-secure-baseline/issues/192))

### Refactor
- define `configuration_aliases` ([#196](https://github.com/nozaq/terraform-aws-secure-baseline/issues/196))
- use `one` instead of `join` to pick the first element ([#194](https://github.com/nozaq/terraform-aws-secure-baseline/issues/194))


<a name="0.26.0"></a>
## [0.26.0] - 2021-06-06
### Feat
- disable automatic public ip assignments in default subnets ([#189](https://github.com/nozaq/terraform-aws-secure-baseline/issues/189))
- enable S3 account-level public block ([#188](https://github.com/nozaq/terraform-aws-secure-baseline/issues/188))
- add functionality to manually enable/disable guardduty-baseline module ([#183](https://github.com/nozaq/terraform-aws-secure-baseline/issues/183))
- enable Insights event logging by default ([#185](https://github.com/nozaq/terraform-aws-secure-baseline/issues/185))
- add cloudtrail insight selector type specification ([#180](https://github.com/nozaq/terraform-aws-secure-baseline/issues/180))
- add vpc_enable variable ([#170](https://github.com/nozaq/terraform-aws-secure-baseline/issues/170))
- add/enable ap-northeast-3 (Osaka) region ([#177](https://github.com/nozaq/terraform-aws-secure-baseline/issues/177))

### Fix
- allow alarm variables to be set at top level module ([#178](https://github.com/nozaq/terraform-aws-secure-baseline/issues/178))


<a name="0.24.0"></a>
## [0.24.0] - 2021-04-25
### Feat
- add flag to allow recording global resources in all regions ([#168](https://github.com/nozaq/terraform-aws-secure-baseline/issues/168))
- enable access analyzer for org ([#167](https://github.com/nozaq/terraform-aws-secure-baseline/issues/167))
- allow enabling/disabling individual alarms ([#164](https://github.com/nozaq/terraform-aws-secure-baseline/issues/164))

### Fix
- edge case when not logging to cloudwatch ([#161](https://github.com/nozaq/terraform-aws-secure-baseline/issues/161))

### Refactor
- define required providers for submodules ([#171](https://github.com/nozaq/terraform-aws-secure-baseline/issues/171))


<a name="0.23.1"></a>
## [0.23.1] - 2020-12-13
### Fix
- invalid reference when flow logs is disabled ([#157](https://github.com/nozaq/terraform-aws-secure-baseline/issues/157))


<a name="0.23.0"></a>
## [0.23.0] - 2020-11-23
### Feat
- use the audit log bucket for Flow Logs by default ([#152](https://github.com/nozaq/terraform-aws-secure-baseline/issues/152))
- add option to publish VPC Flow Logs to either S3 or CW ([#151](https://github.com/nozaq/terraform-aws-secure-baseline/issues/151))
- associate members to master in SecurityHub ([#147](https://github.com/nozaq/terraform-aws-secure-baseline/issues/147))
- add a flag to enable/disable VPC Flow Logs ([#146](https://github.com/nozaq/terraform-aws-secure-baseline/issues/146))


<a name="0.22.0"></a>
## [0.22.0] - 2020-11-14
### Feat
- apply tags to default network resources ([#133](https://github.com/nozaq/terraform-aws-secure-baseline/issues/133))

### Fix
- logging policies when using custom prefixes ([#141](https://github.com/nozaq/terraform-aws-secure-baseline/issues/141))
- deprecation warnings ([#140](https://github.com/nozaq/terraform-aws-secure-baseline/issues/140))
- prevent AWS Config to fire alarms ([#139](https://github.com/nozaq/terraform-aws-secure-baseline/issues/139))


<a name="0.21.0"></a>
## [0.21.0] - 2020-09-24
### Feat
- various updates to comply with CIS Benchmark v1.3.0 ([#131](https://github.com/nozaq/terraform-aws-secure-baseline/issues/131))
- force using HTTPS to access the access log bucket ([#129](https://github.com/nozaq/terraform-aws-secure-baseline/issues/129))
- force using HTTPS to access the audit log bucket ([#128](https://github.com/nozaq/terraform-aws-secure-baseline/issues/128))
- add parameters to make role creations optional ([#127](https://github.com/nozaq/terraform-aws-secure-baseline/issues/127))
- add tags to guardduty ([#121](https://github.com/nozaq/terraform-aws-secure-baseline/issues/121))
- add tags to flow logs ([#120](https://github.com/nozaq/terraform-aws-secure-baseline/issues/120))

### Fix
- remove a redundant Config rule ([#132](https://github.com/nozaq/terraform-aws-secure-baseline/issues/132))


<a name="0.20.0"></a>
## [0.20.0] - 2020-08-10
### Feat
- make all roles to be optional ([#115](https://github.com/nozaq/terraform-aws-secure-baseline/issues/115))

### Fix
- add a wildcard suffix to log group ARN ([#119](https://github.com/nozaq/terraform-aws-secure-baseline/issues/119))


<a name="0.19.0"></a>
## [0.19.0] - 2020-08-10
### Feat
- new SecurityHub standards support ([#113](https://github.com/nozaq/terraform-aws-secure-baseline/issues/113))
- make delivery of CloudTrail to CloudWatch Logs and SNS optional ([#117](https://github.com/nozaq/terraform-aws-secure-baseline/issues/117))

### Fix
- support standard options for ap-east-1


<a name="0.18.1"></a>
## [0.18.1] - 2020-05-31
### Fix
- do not enable SecurityHub when not enabled ([#111](https://github.com/nozaq/terraform-aws-secure-baseline/issues/111))


<a name="0.18.0"></a>
## [0.18.0] - 2020-05-17
### Feat
- enable Security Hub in each region ([#105](https://github.com/nozaq/terraform-aws-secure-baseline/issues/105))
- encrypt the sns topic ([#103](https://github.com/nozaq/terraform-aws-secure-baseline/issues/103))

### Fix
- use the same CMK for encrypting the SNS topic ([#104](https://github.com/nozaq/terraform-aws-secure-baseline/issues/104))
- ensure to have the audit log bucket before CloudTrail ([#102](https://github.com/nozaq/terraform-aws-secure-baseline/issues/102))
- add in new region ([#91](https://github.com/nozaq/terraform-aws-secure-baseline/issues/91))


<a name="0.17.0"></a>
## [0.17.0] - 2019-12-14

<a name="0.16.2"></a>
## [0.16.2] - 2019-11-16
### Refactor
- remove unused data source


<a name="0.16.1"></a>
## [0.16.1] - 2019-10-12
### Fix
- do not read AWS Organization when account_type is set to "individual"


<a name="0.16.0"></a>
## [0.16.0] - 2019-09-28
### Feat
- add an argument to specify target regions.
- add "tags" argument

### Fix
- incorrect references in external-bucket example


<a name="0.15.0"></a>
## [0.15.0] - 2019-08-18
### Feat
- allow member accounts access to the audit log bucket
- do not setup CloudTrail for member accounts
- add the organizational AWS Config aggregated view
- support organization trails
- support GuardDuty master/member accounts
- only include global resources in the specified region

### Fix
- permissions for organization trail
- do not override guardduty_master_account_id for simplicity
- insufficient permission to accept organization trails.

### Refactor
- use aws_iam_policy_document instead of heredocs


<a name="0.14.0"></a>
## [0.14.0] - 2019-07-24
### Feat
- allow using an external bucket instead of creating a new one
- add a flag to enable force_destroy on S3 buckets


<a name="0.13.0"></a>
## [0.13.0] - 2019-07-14
### Feat
- take finding_publishing_frequency as an input variable
- enable GuardDuty in eu-north-1 region


<a name="0.12.0"></a>
## [0.12.0] - 2019-07-14
### Feat
- return resources as outputs instead of specific attributes


<a name="0.11.0"></a>
## [0.11.0] - 2019-06-06

<a name="0.10.0"></a>
## [0.10.0] - 2019-05-25
### Feat
- upgrade to terraform 0.12


<a name="0.9.0"></a>
## [0.9.0] - 2019-04-06
### Feat
- enable SecurityHub and CIS standard subscription
- add eu-north-1 region support


<a name="0.8.0"></a>
## [0.8.0] - 2019-04-03
### Feat
- add eu-north-1 region support

### Fix
- remove a default subnet resource


<a name="0.7.0"></a>
## [0.7.0] - 2019-02-11
### Fix
- create a log group for VPC Flow Logs in each region


<a name="0.6.0"></a>
## [0.6.0] - 2018-11-23
### Feat
- enable managed config rules for benchmark compliance


<a name="0.5.0"></a>
## [0.5.0] - 2018-08-05
### Feat
- enable GuardDuty in Paris region.

### Fix
- Change how to workaround the default ACL issue.


<a name="0.4.1"></a>
## [0.4.1] - 2018-05-27
### Fix
- create a global rule after recorders.


<a name="0.4.0"></a>
## [0.4.0] - 2018-05-27
### Feat
- enable AWS Config rules for monitoring


<a name="0.3.0"></a>
## [0.3.0] - 2018-05-19
### Feat
- automatically archive audit logs into Amazon Glacier


<a name="0.2.1"></a>
## [0.2.1] - 2018-04-01
### Fix
- temporarily disable mfa_delete on secure buckets


<a name="0.2.0"></a>
## [0.2.0] - 2018-04-01
### Feat
- enable versioning with secure buckets


<a name="0.1.1"></a>
## [0.1.1] - 2018-03-20
### Fix
- omit GuardDuty config for eu-west-3 region until supported


<a name="0.1.0"></a>
## [0.1.0] - 2018-03-11
### Feat
- add various outputs

### Fix
- update var names in the CI script


<a name="0.0.5"></a>
## [0.0.5] - 2018-02-17
### Feat
- add IAM baseline module

### Refactor
- use consistent resource namings


<a name="0.0.4"></a>
## [0.0.4] - 2018-02-12
### Feat
- enable GuardDuty in all regions


<a name="0.0.3"></a>
## [0.0.3] - 2018-02-12
### Feat
- output an ID of the audit log bucket

### Fix
- broken output value


<a name="0.0.2"></a>
## [0.0.2] - 2018-02-12

<a name="0.0.1"></a>
## 0.0.1 - 2018-02-12

[1.0.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.34.0...1.0.0
[0.34.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.33.0...0.34.0
[0.33.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.32.0...0.33.0
[0.32.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.31.0...0.32.0
[0.31.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.30.0...0.31.0
[0.30.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.29.2...0.30.0
[0.29.2]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.29.1...0.29.2
[0.29.1]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.29.0...0.29.1
[0.29.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.28.0...0.29.0
[0.28.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.27.1...0.28.0
[0.27.1]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.27.0...0.27.1
[0.27.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.26.0...0.27.0
[0.26.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.24.0...0.26.0
[0.24.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.23.1...0.24.0
[0.23.1]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.23.0...0.23.1
[0.23.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.22.0...0.23.0
[0.22.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.21.0...0.22.0
[0.21.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.20.0...0.21.0
[0.20.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.19.0...0.20.0
[0.19.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.18.1...0.19.0
[0.18.1]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.18.0...0.18.1
[0.18.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.17.0...0.18.0
[0.17.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.16.2...0.17.0
[0.16.2]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.16.1...0.16.2
[0.16.1]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.16.0...0.16.1
[0.16.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.15.0...0.16.0
[0.15.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.14.0...0.15.0
[0.14.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.13.0...0.14.0
[0.13.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.12.0...0.13.0
[0.12.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.11.0...0.12.0
[0.11.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.10.0...0.11.0
[0.10.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.9.0...0.10.0
[0.9.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.8.0...0.9.0
[0.8.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.7.0...0.8.0
[0.7.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.6.0...0.7.0
[0.6.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.5.0...0.6.0
[0.5.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.4.1...0.5.0
[0.4.1]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.4.0...0.4.1
[0.4.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.2.1...0.3.0
[0.2.1]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.2.0...0.2.1
[0.2.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.1.1...0.2.0
[0.1.1]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.1.0...0.1.1
[0.1.0]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.0.5...0.1.0
[0.0.5]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.0.4...0.0.5
[0.0.4]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.0.3...0.0.4
[0.0.3]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.0.2...0.0.3
[0.0.2]: https://github.com/nozaq/terraform-aws-secure-baseline/compare/0.0.1...0.0.2
