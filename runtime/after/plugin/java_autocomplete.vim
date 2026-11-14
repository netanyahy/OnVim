" ==============================================================================
"               ⚡ OnVim - Java Autocompletion Engine (VS Code Style) ⚡
" ==============================================================================

let g:onvim_java_completions = [
\ {'word': 'System',         'menu': '[class]  java.lang.System'},
\ {'word': 'String',         'menu': '[class]  java.lang.String'},
\ {'word': 'Integer',        'menu': '[class]  java.lang.Integer'},
\ {'word': 'Boolean',        'menu': '[class]  java.lang.Boolean'},
\ {'word': 'Double',         'menu': '[class]  java.lang.Double'},
\ {'word': 'Float',          'menu': '[class]  java.lang.Float'},
\ {'word': 'Long',           'menu': '[class]  java.lang.Long'},
\ {'word': 'Byte',           'menu': '[class]  java.lang.Byte'},
\ {'word': 'Short',          'menu': '[class]  java.lang.Short'},
\ {'word': 'Character',      'menu': '[class]  java.lang.Character'},
\ {'word': 'Object',         'menu': '[class]  java.lang.Object'},
\ {'word': 'List',           'menu': '[interface] java.util.List'},
\ {'word': 'ArrayList',      'menu': '[class]  java.util.ArrayList'},
\ {'word': 'LinkedList',     'menu': '[class]  java.util.LinkedList'},
\ {'word': 'Map',            'menu': '[interface] java.util.Map'},
\ {'word': 'HashMap',        'menu': '[class]  java.util.HashMap'},
\ {'word': 'LinkedHashMap',  'menu': '[class]  java.util.LinkedHashMap'},
\ {'word': 'TreeMap',        'menu': '[class]  java.util.TreeMap'},
\ {'word': 'Set',            'menu': '[interface] java.util.Set'},
\ {'word': 'HashSet',        'menu': '[class]  java.util.HashSet'},
\ {'word': 'TreeSet',        'menu': '[class]  java.util.TreeSet'},
\ {'word': 'Queue',          'menu': '[interface] java.util.Queue'},
\ {'word': 'Deque',          'menu': '[interface] java.util.Deque'},
\ {'word': 'ArrayDeque',     'menu': '[class]  java.util.ArrayDeque'},
\ {'word': 'PriorityQueue',  'menu': '[class]  java.util.PriorityQueue'},
\ {'word': 'Collections',    'menu': '[class]  java.util.Collections'},
\ {'word': 'Arrays',         'menu': '[class]  java.util.Arrays'},
\ {'word': 'Objects',        'menu': '[class]  java.util.Objects'},
\ {'word': 'Optional',       'menu': '[class]  java.util.Optional'},
\ {'word': 'Stream',         'menu': '[interface] java.util.stream.Stream'},
\ {'word': 'Collectors',     'menu': '[class]  java.util.stream.Collectors'},
\ {'word': 'Scanner',        'menu': '[class]  java.util.Scanner'},
\ {'word': 'Math',           'menu': '[class]  java.lang.Math'},
\ {'word': 'Thread',         'menu': '[class]  java.lang.Thread'},
\ {'word': 'Runnable',       'menu': '[interface] java.lang.Runnable'},
\ {'word': 'Callable',       'menu': '[interface] java.util.concurrent.Callable'},
\ {'word': 'Future',         'menu': '[interface] java.util.concurrent.Future'},
\ {'word': 'CompletableFuture', 'menu': '[class] java.util.concurrent.CompletableFuture'},
\ {'word': 'Exception',      'menu': '[class]  java.lang.Exception'},
\ {'word': 'RuntimeException', 'menu': '[class] java.lang.RuntimeException'},
\ {'word': 'IllegalArgumentException', 'menu': '[class] java.lang'},
\ {'word': 'IllegalStateException', 'menu': '[class] java.lang'},
\ {'word': 'NullPointerException', 'menu': '[class] java.lang'},
\ {'word': 'IOException',     'menu': '[class]  java.io.IOException'},
\ {'word': 'File',           'menu': '[class]  java.io.File'},
\ {'word': 'Path',           'menu': '[interface] java.nio.file.Path'},
\ {'word': 'Paths',          'menu': '[class]  java.nio.file.Paths'},
\ {'word': 'Files',          'menu': '[class]  java.nio.file.Files'},
\ {'word': 'InputStream',    'menu': '[class]  java.io.InputStream'},
\ {'word': 'OutputStream',   'menu': '[class]  java.io.OutputStream'},
\ {'word': 'BufferedReader', 'menu': '[class]  java.io.BufferedReader'},
\ {'word': 'BufferedWriter', 'menu': '[class]  java.io.BufferedWriter'},
\ {'word': 'StringBuilder',  'menu': '[class]  java.lang.StringBuilder'},
\ {'word': 'StringBuffer',   'menu': '[class]  java.lang.StringBuffer'},
\ {'word': 'BigDecimal',     'menu': '[class]  java.math.BigDecimal'},
\ {'word': 'BigInteger',     'menu': '[class]  java.math.BigInteger'},
\ {'word': 'LocalDate',      'menu': '[class]  java.time.LocalDate'},
\ {'word': 'LocalTime',      'menu': '[class]  java.time.LocalTime'},
\ {'word': 'LocalDateTime',  'menu': '[class]  java.time.LocalDateTime'},
\ {'word': 'Instant',        'menu': '[class]  java.time.Instant'},
\ {'word': 'Duration',       'menu': '[class]  java.time.Duration'},
\ {'word': 'Iterator',       'menu': '[interface] java.util.Iterator'},
\ {'word': 'Iterable',       'menu': '[interface] java.lang.Iterable'},
\ {'word': 'Comparator',     'menu': '[interface] java.util.Comparator'},
\ {'word': 'Comparable',     'menu': '[interface] java.lang.Comparable'},
\ {'word': 'Predicate',      'menu': '[interface] java.util.function.Predicate'},
\ {'word': 'Function',       'menu': '[interface] java.util.function.Function'},
\ {'word': 'Consumer',       'menu': '[interface] java.util.function.Consumer'},
\ {'word': 'Supplier',       'menu': '[interface] java.util.function.Supplier'},
\ {'word': '@Override',      'menu': '[annotation] java.lang.Override'},
\ {'word': '@Deprecated',    'menu': '[annotation] java.lang.Deprecated'},
\ {'word': '@SuppressWarnings', 'menu': '[annotation] java.lang'},
\ {'word': '@SpringBootApplication', 'menu': '[spring]'},
\ {'word': '@Autowired',     'menu': '[spring]'},
\ {'word': '@Component',     'menu': '[spring]'},
\ {'word': '@Service',       'menu': '[spring]'},
\ {'word': '@Repository',    'menu': '[spring]'},
\ {'word': '@Controller',    'menu': '[spring]'},
\ {'word': '@RestController','menu': '[spring]'},
\ {'word': '@RequestMapping','menu': '[spring]'},
\ {'word': '@GetMapping',    'menu': '[spring]'},
\ {'word': '@PostMapping',   'menu': '[spring]'},
\ {'word': '@PutMapping',    'menu': '[spring]'},
\ {'word': '@DeleteMapping', 'menu': '[spring]'},
\ {'word': '@PathVariable',  'menu': '[spring]'},
\ {'word': '@RequestParam',  'menu': '[spring]'},
\ {'word': '@RequestBody',   'menu': '[spring]'},
\ {'word': '@ResponseBody',  'menu': '[spring]'},
\ {'word': '@Transactional', 'menu': '[spring]'},
\ {'word': '@Value',         'menu': '[spring]'},
\ {'word': '@Configuration', 'menu': '[spring]'},
\ {'word': '@Bean',          'menu': '[spring]'},
\ {'word': '@Getter',        'menu': '[lombok]'},
\ {'word': '@Setter',        'menu': '[lombok]'},
\ {'word': '@ToString',      'menu': '[lombok]'},
\ {'word': '@EqualsAndHashCode', 'menu': '[lombok]'},
\ {'word': '@NoArgsConstructor', 'menu': '[lombok]'},
\ {'word': '@AllArgsConstructor', 'menu': '[lombok]'},
\ {'word': '@RequiredArgsConstructor', 'menu': '[lombok]'},
\ {'word': '@Data',          'menu': '[lombok]'},
\ {'word': '@Builder',       'menu': '[lombok]'},
\ {'word': '@Slf4j',         'menu': '[lombok]'},
\ {'word': 'public',         'menu': '[keyword]'},
\ {'word': 'private',        'menu': '[keyword]'},
\ {'word': 'protected',      'menu': '[keyword]'},
\ {'word': 'class',          'menu': '[keyword]'},
\ {'word': 'interface',      'menu': '[keyword]'},
\ {'word': 'enum',           'menu': '[keyword]'},
\ {'word': 'record',         'menu': '[keyword]'},
\ {'word': 'extends',        'menu': '[keyword]'},
\ {'word': 'implements',     'menu': '[keyword]'},
\ {'word': 'package',        'menu': '[keyword]'},
\ {'word': 'import',         'menu': '[keyword]'},
\ {'word': 'static',         'menu': '[keyword]'},
\ {'word': 'final',          'menu': '[keyword]'},
\ {'word': 'void',           'menu': '[keyword]'},
\ {'word': 'return',         'menu': '[keyword]'},
\ {'word': 'new',            'menu': '[keyword]'},
\ {'word': 'this',           'menu': '[keyword]'},
\ {'word': 'super',          'menu': '[keyword]'},
\ {'word': 'null',           'menu': '[keyword]'},
\ {'word': 'true',           'menu': '[keyword]'},
\ {'word': 'false',          'menu': '[keyword]'},
\ {'word': 'instanceof',     'menu': '[keyword]'},
\ {'word': 'throws',         'menu': '[keyword]'},
\ {'word': 'throw',          'menu': '[keyword]'},
\ {'word': 'try',            'menu': '[keyword]'},
\ {'word': 'catch',          'menu': '[keyword]'},
\ {'word': 'finally',        'menu': '[keyword]'},
\ {'word': 'synchronized',   'menu': '[keyword]'},
\ {'word': 'volatile',       'menu': '[keyword]'},
\ {'word': 'transient',      'menu': '[keyword]'},
\ {'word': 'var',            'menu': '[keyword]'},
\ {'word': 'yield',          'menu': '[keyword]'},
\ {'word': 'sealed',         'menu': '[keyword]'},
\ {'word': 'permits',        'menu': '[keyword]'},
\ {'word': 'println',        'menu': '[method] void println()'},
\ {'word': 'print',          'menu': '[method] void print()'},
\ {'word': 'printf',         'menu': '[method] PrintStream printf()'},
\ {'word': 'equals',         'menu': '[method] boolean equals(Object)'},
\ {'word': 'hashCode',       'menu': '[method] int hashCode()'},
\ {'word': 'toString',       'menu': '[method] String toString()'},
\ {'word': 'length',         'menu': '[method] int length()'},
\ {'word': 'size',           'menu': '[method] int size()'},
\ {'word': 'isEmpty',        'menu': '[method] boolean isEmpty()'},
\ {'word': 'contains',       'menu': '[method] boolean contains()'},
\ {'word': 'containsKey',    'menu': '[method] boolean containsKey()'},
\ {'word': 'containsValue',  'menu': '[method] boolean containsValue()'},
\ {'word': 'get',            'menu': '[method] V get(K key)'},
\ {'word': 'put',            'menu': '[method] V put(K key, V val)'},
\ {'word': 'putIfAbsent',    'menu': '[method]'},
\ {'word': 'getOrDefault',   'menu': '[method]'},
\ {'word': 'add',            'menu': '[method] boolean add(E)'},
\ {'word': 'addAll',         'menu': '[method] boolean addAll()'},
\ {'word': 'remove',         'menu': '[method] boolean remove()'},
\ {'word': 'clear',          'menu': '[method] void clear()'},
\ {'word': 'indexOf',        'menu': '[method] int indexOf()'},
\ {'word': 'substring',      'menu': '[method] String substring()'},
\ {'word': 'charAt',         'menu': '[method] char charAt(int)'},
\ {'word': 'split',          'menu': '[method] String[] split()'},
\ {'word': 'replace',        'menu': '[method] String replace()'},
\ {'word': 'replaceAll',     'menu': '[method] String replaceAll()'},
\ {'word': 'trim',           'menu': '[method] String trim()'},
\ {'word': 'strip',          'menu': '[method] String strip()'},
\ {'word': 'toLowerCase',    'menu': '[method] String toLowerCase()'},
\ {'word': 'toUpperCase',    'menu': '[method] String toUpperCase()'},
\ {'word': 'startsWith',     'menu': '[method] boolean startsWith()'},
\ {'word': 'endsWith',       'menu': '[method] boolean endsWith()'},
\ {'word': 'stream',         'menu': '[method] Stream<E> stream()'},
\ {'word': 'parallelStream', 'menu': '[method] Stream<E> parallelStream()'},
\ {'word': 'filter',         'menu': '[method] Stream filter(Predicate)'},
\ {'word': 'map',            'menu': '[method] Stream map(Function)'},
\ {'word': 'flatMap',        'menu': '[method] Stream flatMap()'},
\ {'word': 'collect',        'menu': '[method] R collect(Collector)'},
\ {'word': 'toList',         'menu': '[method] List<T> toList()'},
\ {'word': 'forEach',        'menu': '[method] void forEach(Consumer)'},
\ {'word': 'findFirst',      'menu': '[method] Optional findFirst()'},
\ {'word': 'findAny',        'menu': '[method] Optional findAny()'},
\ {'word': 'orElse',         'menu': '[method] T orElse(T other)'},
\ {'word': 'orElseGet',      'menu': '[method] T orElseGet(Supplier)'},
\ {'word': 'orElseThrow',    'menu': '[method] T orElseThrow()'},
\ {'word': 'isPresent',      'menu': '[method] boolean isPresent()'},
\ {'word': 'ifPresent',      'menu': '[method] void ifPresent()'},
\ ]

function! s:java_completor(opt, ctx) abort
  let l:typed = a:ctx['typed']
  let l:col = a:ctx['col']
  let l:kw = matchstr(l:typed, '\k\+$')
  let l:kwlen = len(l:kw)
  if l:kwlen < 1
    return
  endif

  let l:startcol = l:col - l:kwlen
  let l:matches = []
  let l:lower_kw = tolower(l:kw)

  for item in g:onvim_java_completions
    if tolower(item.word) =~# '^' . l:lower_kw
      call add(l:matches, item)
    endif
  endfor

  call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction

augroup OnVimJavaAutocomplete
  au!
  au User asyncomplete_setup call asyncomplete#register_source({
      \ 'name': 'java_keywords',
      \ 'allowlist': ['java'],
      \ 'completor': function('s:java_completor'),
      \ 'priority': 20,
      \ })
augroup END

" Готовые сниппеты для Java разработчика (IDEA / VS Code Style)
augroup OnVimJavaSnippets
  au!
  autocmd FileType java inoreabbrev <buffer> psvm public static void main(String[] args) {<CR>}<Esc>O
  autocmd FileType java inoreabbrev <buffer> sout System.out.println();<Left><Left>
  autocmd FileType java inoreabbrev <buffer> souf System.out.printf("");<Left><Left><Left>
  autocmd FileType java inoreabbrev <buffer> serr System.err.println();<Left><Left>
  autocmd FileType java inoreabbrev <buffer> fori for (int i = 0; i < ; i++) {<CR>}<Esc>k$F;i
  autocmd FileType java inoreabbrev <buffer> ifn if ( == null) {<CR>}<Esc>k$F=hi
  autocmd FileType java inoreabbrev <buffer> inn if ( != null) {<CR>}<Esc>k$F!hi
augroup END
