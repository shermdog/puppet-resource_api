require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'device_provider',
  docs: 'A example/test provider for device support',
  attributes: {
    name: {
      type: 'String',
      behaviour: :namevar,
      desc: 'the title',
    },
    string: {
      type: 'String',
      desc: 'a string parameter',
      default: 'default value',
    },
    boolean: {
      type: 'Boolean',
      desc: 'a boolean parameter',
    },
    integer: {
      type: 'Integer',
      desc: 'an integer parameter',
    },
    float: {
      type: 'Float',
      desc: 'a floating point parameter',
    },
    ensure: {
      type: 'Enum[present, absent]',
      desc: 'a ensure parameter',
    },
    variant_pattern: {
      type: 'Variant[Pattern[/\A(0x)?[0-9a-fA-F]{8}\Z/], Pattern[/\A(0x)?[0-9a-fA-F]{16}\Z/], Pattern[/\A(0x)?[0-9a-fA-F]{40}\Z/]]',
      desc: 'a pattern parameter',
    },
    path: {
      type: 'Variant[Stdlib::Absolutepath, Pattern[/\A(https?|ftp):\/\//]]',
      desc: 'a path or URL parameter',
    },
    url: {
      type: 'Pattern[/\A((hkp|http|https):\/\/)?([a-z\d])([a-z\d-]{0,61}\.)+[a-z\d]+(:\d{2,5})?$/]',
      desc: 'a hkp or http(s) url parameter',
    },
    optional_string: {
      type: 'Optional[String]',
      desc: 'a optional string parameter',
    },
    string_param: {
      type: 'String',
      desc: 'a string parameter',
      default: 'default value',
      behaviour: :parameter,
    },
    boolean_param: {
      type: 'Boolean',
      desc: 'a boolean parameter',
      behaviour: :parameter,
    },
    integer_param: {
      type: 'Integer',
      desc: 'an integer parameter',
      behaviour: :parameter,
    },
    float_param: {
      type: 'Float',
      desc: 'a floating point parameter',
      behaviour: :parameter,
    },
    ensure_param: {
      type: 'Enum[present, absent]',
      desc: 'a ensure parameter',
      behaviour: :parameter,
    },
    variant_pattern_param: {
      type: 'Variant[Pattern[/\A(0x)?[0-9a-fA-F]{8}\Z/], Pattern[/\A(0x)?[0-9a-fA-F]{16}\Z/], Pattern[/\A(0x)?[0-9a-fA-F]{40}\Z/]]',
      desc: 'a pattern parameter',
      behaviour: :parameter,
    },
    path_param: {
      type: 'Variant[Stdlib::Absolutepath, Pattern[/\A(https?|ftp):\/\//]]',
      desc: 'a path or URL parameter',
      behaviour: :parameter,
    },
    url_param: {
      type: 'Pattern[/\A((hkp|http|https):\/\/)?([a-z\d])([a-z\d-]{0,61}\.)+[a-z\d]+(:\d{2,5})?$/]',
      desc: 'a hkp or http(s) url parameter',
      behaviour: :parameter,
    },
    optional_string_param: {
      type: 'Optional[String]',
      desc: 'a optional string parameter',
      behaviour: :parameter,
    },
    string_ro: {
      type: 'String',
      desc: 'a string readonly',
      default: 'default value',
      behaviour: :readonly,
    },
    boolean_ro: {
      type: 'Boolean',
      desc: 'a boolean readonly',
      behaviour: :readonly,
    },
    integer_ro: {
      type: 'Integer',
      desc: 'an integer readonly',
      behaviour: :readonly,
    },
    float_ro: {
      type: 'Float',
      desc: 'a floating point readonly',
      behaviour: :readonly,
    },
    ensure_ro: {
      type: 'Enum[present, absent]',
      desc: 'a ensure readonly',
      behaviour: :readonly,
    },
    variant_pattern_ro: {
      type: 'Variant[Pattern[/\A(0x)?[0-9a-fA-F]{8}\Z/], Pattern[/\A(0x)?[0-9a-fA-F]{16}\Z/], Pattern[/\A(0x)?[0-9a-fA-F]{40}\Z/]]',
      desc: 'a pattern readonly',
      behaviour: :readonly,
    },
    path_ro: {
      type: 'Variant[Stdlib::Absolutepath, Pattern[/\A(https?|ftp):\/\//]]',
      desc: 'a path or URL readonly',
      behaviour: :readonly,
    },
    url_ro: {
      type: 'Pattern[/\A((hkp|http|https):\/\/)?([a-z\d])([a-z\d-]{0,61}\.)+[a-z\d]+(:\d{2,5})?$/]',
      desc: 'a hkp or http(s) url readonly',
      behaviour: :readonly,
    },
    optional_string_ro: {
      type: 'Optional[String]',
      desc: 'a optional string readonly',
      behaviour: :readonly,
    },
  },
)
