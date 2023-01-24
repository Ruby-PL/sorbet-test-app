# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `irb` gem.
# Please instead update this file by running `bin/tapioca gem irb`.

# source://irb-1.4.1/lib/irb/color.rb:7
module IRB::Color
  class << self
    # source://irb-1.4.1/lib/irb/color.rb:104
    def clear(colorable: T.unsafe(nil)); end

    # @return [Boolean]
    #
    # source://irb-1.4.1/lib/irb/color.rb:79
    def colorable?; end

    # source://irb-1.4.1/lib/irb/color.rb:109
    def colorize(text, seq, colorable: T.unsafe(nil)); end

    # If `complete` is false (code is incomplete), this does not warn compile_error.
    # This option is needed to avoid warning a user when the compile_error is happening
    # because the input is not wrong but just incomplete.
    #
    # source://irb-1.4.1/lib/irb/color.rb:118
    def colorize_code(code, complete: T.unsafe(nil), ignore_error: T.unsafe(nil), colorable: T.unsafe(nil)); end

    # @return [Boolean]
    #
    # source://irb-1.4.1/lib/irb/color.rb:83
    def inspect_colorable?(obj, seen: T.unsafe(nil)); end

    private

    # source://irb-1.4.1/lib/irb/color.rb:197
    def dispatch_seq(token, expr, str, in_symbol:); end

    # source://irb-1.4.1/lib/irb/color.rb:164
    def scan(code, allow_last_error:); end

    # source://irb-1.4.1/lib/irb/color.rb:156
    def without_circular_ref(obj, seen:, &block); end
  end
end

# A constant of all-bit 1 to match any Ripper's state in #dispatch_seq
#
# source://irb-1.4.1/lib/irb/color.rb:26
IRB::Color::ALL = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:15
IRB::Color::BLUE = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:9
IRB::Color::BOLD = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:8
IRB::Color::CLEAR = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:17
IRB::Color::CYAN = T.let(T.unsafe(nil), Integer)

# source://debug-1.6.2/lib/debug/color.rb:8
IRB::Color::DIM = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:75
IRB::Color::ERROR_TOKENS = T.let(T.unsafe(nil), Array)

# source://irb-1.4.1/lib/irb/color.rb:13
IRB::Color::GREEN = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:16
IRB::Color::MAGENTA = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:12
IRB::Color::RED = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:11
IRB::Color::REVERSE = T.let(T.unsafe(nil), Integer)

# A class to manage a state to know whether the current token is for Symbol or not.
#
# source://irb-1.4.1/lib/irb/color.rb:213
class IRB::Color::SymbolState
  # @return [SymbolState] a new instance of SymbolState
  #
  # source://irb-1.4.1/lib/irb/color.rb:214
  def initialize; end

  # Return true if the token is a part of Symbol.
  #
  # source://irb-1.4.1/lib/irb/color.rb:220
  def scan_token(token); end
end

# source://irb-1.4.1/lib/irb/color.rb:19
IRB::Color::TOKEN_KEYWORDS = T.let(T.unsafe(nil), Hash)

# source://irb-1.4.1/lib/irb/color.rb:32
IRB::Color::TOKEN_SEQ_EXPRS = T.let(T.unsafe(nil), Hash)

# source://irb-1.4.1/lib/irb/color.rb:10
IRB::Color::UNDERLINE = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color.rb:14
IRB::Color::YELLOW = T.let(T.unsafe(nil), Integer)

# source://irb-1.4.1/lib/irb/color_printer.rb:6
class IRB::ColorPrinter < ::PP
  # source://irb-1.4.1/lib/irb/color_printer.rb:24
  def pp(obj); end

  # source://irb-1.4.1/lib/irb/color_printer.rb:33
  def text(str, width = T.unsafe(nil)); end

  class << self
    # source://irb-1.4.1/lib/irb/color_printer.rb:8
    def pp(obj, out = T.unsafe(nil), width = T.unsafe(nil)); end

    private

    # source://irb-1.4.1/lib/irb/color_printer.rb:17
    def screen_width; end
  end
end

# An output formatter used internally by the lexer.
#
# source://irb-1.4.1/lib/irb/notifier.rb:17
module IRB::Notifier
  private

  # Define a new Notifier output source, returning a new CompositeNotifier
  # with the given +prefix+ and +output_method+.
  #
  # The optional +prefix+ will be appended to all objects being inspected
  # during output, using the given +output_method+ as the output source. If
  # no +output_method+ is given, StdioOutputMethod will be used, and all
  # expressions will be sent directly to STDOUT without any additional
  # formatting.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:37
  def def_notifier(prefix = T.unsafe(nil), output_method = T.unsafe(nil)); end

  class << self
    # Define a new Notifier output source, returning a new CompositeNotifier
    # with the given +prefix+ and +output_method+.
    #
    # The optional +prefix+ will be appended to all objects being inspected
    # during output, using the given +output_method+ as the output source. If
    # no +output_method+ is given, StdioOutputMethod will be used, and all
    # expressions will be sent directly to STDOUT without any additional
    # formatting.
    #
    # source://irb-1.4.1/lib/irb/notifier.rb:37
    def def_notifier(prefix = T.unsafe(nil), output_method = T.unsafe(nil)); end
  end
end

# An abstract class, or superclass, for CompositeNotifier and
# LeveledNotifier to inherit. It provides several wrapper methods for the
# OutputMethod object used by the Notifier.
#
# source://irb-1.4.1/lib/irb/notifier.rb:45
class IRB::Notifier::AbstractNotifier
  # Creates a new Notifier object
  #
  # @return [AbstractNotifier] a new instance of AbstractNotifier
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:47
  def initialize(prefix, base_notifier); end

  # Execute the given block if notifications are enabled.
  #
  # @yield [@base_notifier]
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:105
  def exec_if; end

  # A wrapper method used to determine whether notifications are enabled.
  #
  # Defaults to +true+.
  #
  # @return [Boolean]
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:59
  def notify?; end

  # Same as #ppx, except it uses the #prefix given during object
  # initialization.
  # See OutputMethod#ppx for more detail.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:88
  def pp(*objs); end

  # Same as #pp, except it concatenates the given +prefix+ with the #prefix
  # given during object initialization.
  #
  # See OutputMethod#ppx for more detail.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:98
  def ppx(prefix, *objs); end

  # The +prefix+ for this Notifier, which is appended to all objects being
  # inspected during output.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:54
  def prefix; end

  # See OutputMethod#print for more detail.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:64
  def print(*opts); end

  # See OutputMethod#printf for more detail.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:74
  def printf(format, *opts); end

  # See OutputMethod#printn for more detail.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:69
  def printn(*opts); end

  # See OutputMethod#puts for more detail.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:79
  def puts(*objs); end
end

# A class that can be used to create a group of notifier objects with the
# intent of representing a leveled notification system for irb.
#
# This class will allow you to generate other notifiers, and assign them
# the appropriate level for output.
#
# The Notifier class provides a class-method Notifier.def_notifier to
# create a new composite notifier. Using the first composite notifier
# object you create, sibling notifiers can be initialized with
# #def_notifier.
#
# source://irb-1.4.1/lib/irb/notifier.rb:122
class IRB::Notifier::CompositeNotifier < ::IRB::Notifier::AbstractNotifier
  # Create a new composite notifier object with the given +prefix+, and
  # +base_notifier+ to use for output.
  #
  # @return [CompositeNotifier] a new instance of CompositeNotifier
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:123
  def initialize(prefix, base_notifier); end

  # Creates a new LeveledNotifier in the composite #notifiers group.
  #
  # The given +prefix+ will be assigned to the notifier, and +level+ will
  # be used as the index of the #notifiers Array.
  #
  # This method returns the newly created instance.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:139
  def def_notifier(level, prefix = T.unsafe(nil)); end

  # Returns the leveled notifier for this object
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:146
  def level; end

  # Sets the leveled notifier for this object.
  #
  # When the given +value+ is an instance of AbstractNotifier,
  # #level_notifier is set to the given object.
  #
  # When an Integer is given, #level_notifier is set to the notifier at the
  # index +value+ in the #notifiers Array.
  #
  # If no notifier exists at the index +value+ in the #notifiers Array, an
  # ErrUndefinedNotifier exception is raised.
  #
  # An ErrUnrecognizedLevel exception is raised if the given +value+ is not
  # found in the existing #notifiers Array, or an instance of
  # AbstractNotifier
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:163
  def level=(value); end

  # Returns the leveled notifier for this object
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:146
  def level_notifier; end

  # Sets the leveled notifier for this object.
  #
  # When the given +value+ is an instance of AbstractNotifier,
  # #level_notifier is set to the given object.
  #
  # When an Integer is given, #level_notifier is set to the notifier at the
  # index +value+ in the #notifiers Array.
  #
  # If no notifier exists at the index +value+ in the #notifiers Array, an
  # ErrUndefinedNotifier exception is raised.
  #
  # An ErrUnrecognizedLevel exception is raised if the given +value+ is not
  # found in the existing #notifiers Array, or an instance of
  # AbstractNotifier
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:163
  def level_notifier=(value); end

  # List of notifiers in the group
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:131
  def notifiers; end
end

# source://irb-1.4.1/lib/irb/notifier.rb:18
class IRB::Notifier::ErrUndefinedNotifier < ::StandardError
  # @return [ErrUndefinedNotifier] a new instance of ErrUndefinedNotifier
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:19
  def initialize(val); end
end

# source://irb-1.4.1/lib/irb/notifier.rb:23
class IRB::Notifier::ErrUnrecognizedLevel < ::StandardError
  # @return [ErrUnrecognizedLevel] a new instance of ErrUnrecognizedLevel
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:24
  def initialize(val); end
end

# A leveled notifier is comparable to the composite group from
# CompositeNotifier#notifiers.
#
# source://irb-1.4.1/lib/irb/notifier.rb:181
class IRB::Notifier::LeveledNotifier < ::IRB::Notifier::AbstractNotifier
  include ::Comparable

  # Create a new leveled notifier with the given +base+, and +prefix+ to
  # send to AbstractNotifier.new
  #
  # The given +level+ is used to compare other leveled notifiers in the
  # CompositeNotifier group to determine whether or not to output
  # notifications.
  #
  # @return [LeveledNotifier] a new instance of LeveledNotifier
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:190
  def initialize(base, level, prefix); end

  # Compares the level of this notifier object with the given +other+
  # notifier.
  #
  # See the Comparable module for more information.
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:203
  def <=>(other); end

  # The current level of this notifier object
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:197
  def level; end

  # Whether to output messages to the output method, depending on the level
  # of this notifier object.
  #
  # @return [Boolean]
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:209
  def notify?; end
end

# NoMsgNotifier is a LeveledNotifier that's used as the default notifier
# when creating a new CompositeNotifier.
#
# This notifier is used as the +zero+ index, or level +0+, for
# CompositeNotifier#notifiers, and will not output messages of any sort.
#
# source://irb-1.4.1/lib/irb/notifier.rb:220
class IRB::Notifier::NoMsgNotifier < ::IRB::Notifier::LeveledNotifier
  # Creates a new notifier that should not be used to output messages.
  #
  # @return [NoMsgNotifier] a new instance of NoMsgNotifier
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:221
  def initialize; end

  # Ensures notifications are ignored, see AbstractNotifier#notify? for
  # more information.
  #
  # @return [Boolean]
  #
  # source://irb-1.4.1/lib/irb/notifier.rb:229
  def notify?; end
end

# An abstract output class for IO in irb. This is mainly used internally by
# IRB::Notifier. You can define your own output method to use with Irb.new,
# or Context.new
#
# source://irb-1.4.1/lib/irb/output-method.rb:17
class IRB::OutputMethod
  # Returns an array of the given +format+ and +opts+ to be used by
  # Kernel#sprintf, if there was a successful Regexp match in the given
  # +format+ from #printf
  #
  #     %
  #     <flag>  [#0- +]
  #     <minimum field width> (\*|\*[1-9][0-9]*\$|[1-9][0-9]*)
  #     <precision>.(\*|\*[1-9][0-9]*\$|[1-9][0-9]*|)?
  #     #<length modifier>(hh|h|l|ll|L|q|j|z|t)
  #     <conversion specifier>[diouxXeEfgGcsb%]
  #
  # source://irb-1.4.1/lib/irb/output-method.rb:54
  def parse_printf_format(format, opts); end

  # Prints the given +objs+ calling Object#inspect on each.
  #
  # See #puts for more detail.
  #
  # source://irb-1.4.1/lib/irb/output-method.rb:70
  def pp(*objs); end

  # Prints the given +objs+ calling Object#inspect on each and appending the
  # given +prefix+.
  #
  # See #puts for more detail.
  #
  # source://irb-1.4.1/lib/irb/output-method.rb:78
  def ppx(prefix, *objs); end

  # Open this method to implement your own output method, raises a
  # NotImplementedError if you don't define #print in your own class.
  #
  # @raise [NotImplementedError]
  #
  # source://irb-1.4.1/lib/irb/output-method.rb:26
  def print(*opts); end

  # Extends IO#printf to format the given +opts+ for Kernel#sprintf using
  # #parse_printf_format
  #
  # source://irb-1.4.1/lib/irb/output-method.rb:37
  def printf(format, *opts); end

  # Prints the given +opts+, with a newline delimiter.
  #
  # source://irb-1.4.1/lib/irb/output-method.rb:31
  def printn(*opts); end

  # Calls #print on each element in the given +objs+, followed by a newline
  # character.
  #
  # source://irb-1.4.1/lib/irb/output-method.rb:60
  def puts(*objs); end
end

# source://irb-1.4.1/lib/irb/output-method.rb:18
class IRB::OutputMethod::NotImplementedError < ::StandardError
  # @return [NotImplementedError] a new instance of NotImplementedError
  #
  # source://irb-1.4.1/lib/irb/output-method.rb:19
  def initialize(val); end
end

# :stopdoc:
#
# source://irb-1.4.1/lib/irb/ruby-lex.rb:17
class RubyLex
  # @return [RubyLex] a new instance of RubyLex
  #
  # source://irb-1.4.1/lib/irb/ruby-lex.rb:25
  def initialize; end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:319
  def check_code_block(code, tokens = T.unsafe(nil)); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:609
  def check_corresponding_token_depth(lines, line_index); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:539
  def check_newline_depth_difference; end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:223
  def check_state(code, tokens = T.unsafe(nil), context: T.unsafe(nil)); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:717
  def check_string_literal(tokens); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:791
  def check_termination_in_prev_line(code, context: T.unsafe(nil)); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:247
  def each_top_level_statement; end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:178
  def find_prev_spaces(line_index); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:238
  def initialize_input; end

  # @return [Boolean]
  #
  # source://irb-1.4.1/lib/irb/ruby-lex.rb:462
  def is_method_calling?(tokens, index); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:511
  def is_the_in_correspond_to_a_for(tokens, index); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:283
  def lex; end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:298
  def process_continue(tokens = T.unsafe(nil)); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:758
  def process_literal_type(tokens = T.unsafe(nil)); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:412
  def process_nesting_level(tokens = T.unsafe(nil)); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:232
  def prompt; end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:198
  def set_auto_indent(context); end

  # io functions
  #
  # source://irb-1.4.1/lib/irb/ruby-lex.rb:51
  def set_input(io, p = T.unsafe(nil), context: T.unsafe(nil), &block); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:121
  def set_prompt(p = T.unsafe(nil), &block); end

  # source://irb-1.4.1/lib/irb/ruby-lex.rb:480
  def take_corresponding_syntax_to_kw_do(tokens, index); end

  private

  # @return [Boolean]
  #
  # source://irb-1.4.1/lib/irb/ruby-lex.rb:840
  def heredoc_scope?; end

  # @return [Boolean]
  #
  # source://irb-1.4.1/lib/irb/ruby-lex.rb:845
  def in_keyword_case_scope?; end

  class << self
    # source://irb-1.4.1/lib/irb/ruby-lex.rb:33
    def compile_with_errors_suppressed(code, line_no: T.unsafe(nil)); end

    # source://irb-1.4.1/lib/irb/ruby-lex.rb:139
    def ripper_lex_without_warning(code, context: T.unsafe(nil)); end
  end
end

# source://irb-1.4.1/lib/irb/ruby-lex.rb:130
RubyLex::ERROR_TOKENS = T.let(T.unsafe(nil), Array)

# source://irb-1.4.1/lib/irb/ruby-lex.rb:19
class RubyLex::TerminateLineInput < ::StandardError
  # @return [TerminateLineInput] a new instance of TerminateLineInput
  #
  # source://irb-1.4.1/lib/irb/ruby-lex.rb:20
  def initialize; end
end
