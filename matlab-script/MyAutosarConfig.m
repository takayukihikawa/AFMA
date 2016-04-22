%---------------------------------------------------------------------------
%  生成されるコンフィギュレーション セットの MATLAB 関数 27-Mar-2015 18:43:16
%  MATLAB バージョン: 8.4.0.150421 (R2014b)
%---------------------------------------------------------------------------

function cs=MyAutosarConfig()

cs = Simulink.ConfigSet;
 
% オリジナルのコンフィギュレーション セットのバージョン: 1.14.3
if cs.versionCompare('1.14.3') < 0
    error('Simulink:MFileVersionViolation', 'ターゲットのコンフィギュレーション セットのバージョンはオリジナルのコンフィギュレーション セットより古いです。');
end
 
% オリジナルの環境文字エンコード: Shift_JIS
if ~strcmpi(get_param(0, 'CharacterEncoding'), 'Shift_JIS')
    warning('Simulink:EncodingUnMatched', 'ターゲットの文字エンコード (%s) はオリジナル (%s) と違います。',  get_param(0, 'CharacterEncoding'), 'Shift_JIS');
end
 
% 以下のコマンドの順序を変更しないでください。パラメーター間に依存関係があります。
cs.set_param('SystemTargetFile', 'autosar.tlc');   % システム ターゲット ファイル
cs.set_param('GenerateComments', 'on');   % コメントを含める 
cs.set_param('SimulinkBlockComments', 'off');   % Simulink ブロック / Stateflow オブジェクトのコメント 
cs.set_param('ShowEliminatedStatement', 'on');   % 消去されたブロックを表示 
cs.set_param('OperatorAnnotations', 'off');   % 演算子の注釈 
cs.set_param('ForceParamTrailComments', 'off');   % SimulinkGlobal ストレージ クラスに対する詳細なコメント 
cs.set_param('InsertBlockDesc', 'off');   % Simulink ブロックの説明 
cs.set_param('SimulinkDataObjDesc', 'off');   % Simulink データ オブジェクトの説明 
cs.set_param('EnableCustomComments', 'off');   % カスタム コメント (MPT オブジェクトのみ) 
cs.set_param('SFDataObjDesc', 'off');   % Stateflow オブジェクトの説明 
cs.set_param('ReqsInCode', 'off');   % 要求のブロック コメント化 
cs.set_param('IncludeHyperlinkInReport', 'off');   % コードからモデルに 
cs.set_param('GenerateReport', 'off');   % コード生成レポートを作成 
cs.set_param('GenerateTraceInfo', 'off');   % モデルからコードに 
cs.set_param('GenerateTraceReport', 'off');   % 削除された / バーチャル ブロック 
cs.set_param('GenerateTraceReportSl', 'off');   % 追跡可能な Simulink ブロック 
cs.set_param('GenerateTraceReportSf', 'off');   % 追跡可能な Stateflow オブジェクト 
cs.set_param('GenerateTraceReportEml', 'off');   % 追跡可能な MATLAB 関数 
cs.set_param('LaunchReport', 'off');   % レポートを自動的に開く 
cs.set_param('GenerateCodeReplacementReport', 'off');   % コードの置き換えをトリガーするブロックをまとめる 
cs.set_param('GenerateCodeMetricsReport', 'off');   % 静的コード指標 
cs.set_param('GenerateWebview', 'off');   % モデルの Web ビューを生成 
cs.set_param('InlineParams', 'on');   % インライン パラメーター 
cs.set_param('OptimizeBlockIOStorage', 'on');   % 信号ストレージの再利用 
cs.set_param('ExpressionFolding', 'on');   % 余分なローカル変数の削除 (式のたたみ込み表現) 
cs.set_param('ParamNamingRule', 'None');   % パラメーター名 
cs.set_param('RTWCompilerOptimization', 'Off');   % コンパイラ最適化レベル 
cs.set_param('SignalNamingRule', 'None');   % 信号名 
cs.set_param('UpdateModelReferenceTargets', 'IfOutOfDateOrStructuralChange');   % リビルド 
cs.set_param('GenerateSampleERTMain', 'off');   % メイン プログラム例の生成 
cs.set_param('ProdHWDeviceType', '32-bit Generic');   % デバイス タイプ 
cs.set_param('EnableUserReplacementTypes', 'on');   % 生成コード内のデータ型名を置換する 
cs.set_param('ERTMultiwordTypeDef', 'System defined');   % マルチワード タイプの定義 
cs.set_param('EnableMemcpy', 'on');   % ベクトルの割り当てに対して memcpy を使用 
cs.set_param('GenerateMakefile', 'on');   % makefile の生成 
cs.set_param('GlobalDataDefinition', 'Auto');   % データ定義 
cs.set_param('GlobalDataReference', 'Auto');   % データ宣言 
cs.set_param('SaveFinalState', 'off');   % 最終状態 
cs.set_param('SignalLogging', 'on');   % 信号のログ 
cs.set_param('TargetUnknown', 'off');   % ターゲットが不明です 
cs.set_param('DSMLogging', 'on');   % データ ストア 
cs.set_param('EnableConcurrentExecution', 'off');   % EnableConcurrentExecution 
cs.set_param('LimitDataPoints', 'on');   % データ点の制限 
cs.set_param('LoadExternalInput', 'off');   % 入力 
cs.set_param('LoadInitialState', 'off');   % 初期状態 
cs.set_param('ReturnWorkspaceOutputs', 'off');   % 単一のオブジェクトとしてシミュレーション出力を保存 
cs.set_param('SaveOutput', 'on');   % 出力 
cs.set_param('SaveState', 'off');   % 状態 
cs.set_param('SaveTime', 'on');   % 時間 
cs.set_param('SupportNonInlinedSFcns', 'off');   % インラインでない S-Function 
cs.set_param('PurelyIntegerCode', 'off');   % 浮動小数点数 
cs.set_param('SupportNonFinite', 'off');   % 非有限数 
cs.set_param('MatFileLogging', 'off');   % MAT ファイルのログ 
cs.set_param('SuppressErrorStatus', 'on');   % リアルタイム モデルのデータ構造内のエラー ステータスを非表示にする 
cs.set_param('SupportContinuousTime', 'off');   % 連続時間 
cs.set_param('IncludeMdlTerminateFcn', 'off');   % 終了関数の生成 
cs.set_param('GRTInterface', 'off');   % クラシック コール インターフェイス 
cs.set_param('CombineOutputUpdateFcns', 'on');   % 1 つの出力/更新関数 
cs.set_param('ModelReferenceMinAlgLoopOccurrences', 'off');   % 代数ループの発生の最小化 
cs.set_param('PortableWordSizes', 'off');   % 移植可能なワード サイズを有効にする 
cs.set_param('ProdEqTarget', 'on');   % テスト ハードウェアを製品ハードウェアと同じにする 
cs.set_param('SolverType', 'Fixed-step');   % タイプ 
cs.set_param('AutoInsertRateTranBlk', 'off');   % データ転送に対するレート変換を自動的に取り扱う 
cs.set_param('ExtMode', 'off');   % インターフェイス 
 
% 以下のコマンドには依存関係がありません。
cs.set_param('Description', '');  % 説明
cs.set_param('Name', 'Configuration');  % 名前

% ソルバー ペイン
cs.set_param('FixedStep', 'auto');   % 固定ステップ サイズ (基本サンプル時間) 
cs.set_param('PositivePriorityOrder', 'off');   % 優先順位が高い場合はタスクの優先順位が高いことを示す 
cs.set_param('SampleTimeConstraint', 'Unconstrained');   % 周期的なサンプル時間の制約 
cs.set_param('Solver', 'ode3');   % ソルバー 
cs.set_param('SolverMode', 'Auto');   % 周期的なサンプル時間のタスク モード 
cs.set_param('StartTime', '0.0');   % 開始時間 
cs.set_param('StopTime', '10');   % 終了時間 

% データのインポート/エクスポート ペイン
cs.set_param('DSMLoggingName', 'dsmout');   % データ ストアのログ名 
cs.set_param('Decimation', '1');   % 間引き 
cs.set_param('InspectSignalLogs', 'off');   % ワークスペース データのログをシミュレーション データ インスペクターに記録 
cs.set_param('MaxDataPoints', '1000');   % データ点の制限 
cs.set_param('OutputSaveName', 'yout');   % 出力 
cs.set_param('SaveFormat', 'Array');   % 形式 
cs.set_param('SignalLoggingName', 'logsout');   % 信号のログ名 
cs.set_param('SignalLoggingSaveFormat', 'Dataset');   % 信号のログ形式 
cs.set_param('TimeSaveName', 'tout');   % 時間 
cs.set_param('VisualizeSimOutput', 'on');   % 選択した信号のシミュレーション データ インスペクターへのライブ ストリーミングを有効にする 

% 最適化 ペイン
cs.set_param('AccelVerboseBuild', 'off');   % 詳細なアクセラレータのビルド 
cs.set_param('BlockReduction', 'on');   % ブロック削減 
cs.set_param('BooleanDataType', 'on');   % Boolean データ (対 double) として論理信号を処理 
cs.set_param('ConditionallyExecuteInputs', 'on');   % 条件付き入力分岐実行 
cs.set_param('DefaultUnderspecifiedDataType', 'double');   % 指定不足のデータ型の既定値 
cs.set_param('EfficientFloat2IntCast', 'off');   % 浮動小数点から範囲外の値を含む整数変換へのコードを削除 
cs.set_param('EfficientMapNaN2IntZero', 'on');   % 浮動小数点から整数への変換で　NaN が 0 にマッピングされて飽和したコードを削除 
cs.set_param('InitFltsAndDblsToZero', 'off');   % float と double を 0.0 に初期化するために memset を使用 
cs.set_param('LifeSpan', '1');   % アプリケーションのライフスパン (日) 
cs.set_param('NoFixptDivByZeroProtection', 'off');   % 除算演算の例外処理に対して保護されたコードの削除 
cs.set_param('OptimizeModelRefInitCode', 'on');   % モデル参照用の初期化コードを最適化 
cs.set_param('SimCompilerOptimization', 'Off');   % コンパイラ最適化レベル 
cs.set_param('UseDivisionForNetSlopeComputation', 'Off');   % 固定小数点の正味勾配計算に除算を使用 
cs.set_param('UseFloatMulNetSlope', 'off');   % 浮動小数点の乗算を使用して勾配設定を補正 
cs.set_param('UseSpecifiedMinMax', 'off');   % 指定した最小値と最大値を使用した最適化 
cs.set_param('ZeroExternalMemoryAtStartup', 'off');   % ルート レベル I/O の 0 の初期化を削除 
cs.set_param('ZeroInternalMemoryAtStartup', 'off');   % 内部データの 0 の初期化を削除 

% 最適化:信号とパラメーター ペイン
cs.set_param('BooleansAsBitfields', 'off');   % Boolean データをビット フィールドにパッキング 
cs.set_param('BufferReuse', 'on');   % ローカル ブロック出力の再利用 
cs.set_param('GlobalBufferReuse', 'on');   % グローバル ブロック出力の再利用 
cs.set_param('GlobalVariableUsage', 'Minimize global data access');   % グローバル データ アクセスの最適化 
cs.set_param('InlineInvariantSignals', 'on');   % インライン不変信号 
cs.set_param('InlinedParameterPlacement', 'NonHierarchical');   % パラメーター構造体 
cs.set_param('LocalBlockOutputs', 'on');   % ローカルなブロックの出力を有効にする 
cs.set_param('MaxStackSize', 'Inherit from target');   % 最大スタック サイズ (バイト) 
cs.set_param('MemcpyThreshold', 64);   % memcpy しきい値 (バイト) 
cs.set_param('PassReuseOutputArgsAs', 'Individual arguments');   % 再利用可能なサブシステムの出力を渡す 
cs.set_param('RollThreshold', 5);   % ループ展開のしきい値 
cs.set_param('StrengthReduction', 'off');   % 配列のインデックスを簡略化する 

% 診断 Solver ペイン
cs.set_param('AlgebraicLoopMsg', 'warning');   % 代数ループ 
cs.set_param('ArtificialAlgebraicLoopMsg', 'warning');   % 代数ループの最小化 
cs.set_param('BlockPriorityViolationMsg', 'warning');   % ブロック優先順位違反 
cs.set_param('ConsistencyChecking', 'none');   % ソルバー データの不整合 
cs.set_param('MaxConsecutiveZCsMsg', 'error');   % 連続的なゼロクロッシング違反 
cs.set_param('MinStepSizeMsg', 'warning');   % 最小ステップ サイズ違反 
cs.set_param('ModelReferenceExtraNoncontSigs', 'error');   % 不要な離散微分信号 
cs.set_param('SimStateInterfaceChecksumMismatchMsg', 'warning');   % SimState インターフェイスのチェックサムの不一致 
cs.set_param('SimStateOlderReleaseMsg', 'error');   % 古いリリースからの SimState オブジェクト 
cs.set_param('SolverPrmCheckMsg', 'warning');   % 自動ソルバー パラメーターの選択 
cs.set_param('StateNameClashWarn', 'none');   % 状態名の衝突 
cs.set_param('TimeAdjustmentMsg', 'none');   % サンプル ヒットの時間調整 
cs.set_param('UnknownTsInhSupMsg', 'warning');   % 指定のないサンプル時間の継承 

% 診断:サンプル時間 ペイン
cs.set_param('DiscreteInheritContinuousMsg', 'warning');   % 連続として用いられる離散 
cs.set_param('InheritedTsInSrcMsg', 'warning');   % -1 のサンプル時間が指定されたソース ブロック 
cs.set_param('MultiTaskCondExecSysMsg', 'error');   % マルチタスクの条件付き実行サブシステム 
cs.set_param('MultiTaskRateTransMsg', 'error');   % マルチタスク レート変換 
cs.set_param('SigSpecEnsureSampleTimeMsg', 'warning');   % Signal Specification ブロックで指定されたサンプル時間にする 
cs.set_param('SingleTaskRateTransMsg', 'none');   % シングルタスク レート変換 
cs.set_param('TasksWithSamePriorityMsg', 'warning');   % 同じ優先順位を持つタスク 

% 診断:データ有効性 ペイン
cs.set_param('ArrayBoundsChecking', 'none');   % 配列範囲の超過 
cs.set_param('AssertControl', 'UseLocalSettings');   % Model Verification ブロックを有効にする 
cs.set_param('CheckMatrixSingularityMsg', 'none');   % 特異値行列による除算 
cs.set_param('IntegerOverflowMsg', 'warning');   % オーバーフローでラップ 
cs.set_param('IntegerSaturationMsg', 'warning');   % オーバーフローで飽和 
cs.set_param('MultiTaskDSMMsg', 'error');   % マルチタスク データ ストア 
cs.set_param('ParameterDowncastMsg', 'error');   % ダウンキャストの検出 
cs.set_param('ParameterOverflowMsg', 'error');   % オーバーフローの検出 
cs.set_param('ParameterPrecisionLossMsg', 'warning');   % 桁落ちの検出 
cs.set_param('ParameterTunabilityLossMsg', 'warning');   % 調整可能性の消失を検出 
cs.set_param('ParameterUnderflowMsg', 'none');   % アンダーフローの検出 
cs.set_param('RTPrefix', 'error');   % 識別子の "rt" 接頭辞 
cs.set_param('ReadBeforeWriteMsg', 'UseLocalSettings');   % 書き込み前の読み取りを検出 
cs.set_param('SignalInfNanChecking', 'none');   % Inf または NaN のブロック出力 
cs.set_param('SignalRangeChecking', 'none');   % シミュレーション範囲のチェック 
cs.set_param('SignalResolutionControl', 'UseLocalSettings');   % 信号の関連付け 
cs.set_param('UnderSpecifiedDataTypeMsg', 'none');   % 指定不足のデータ型 
cs.set_param('UnderspecifiedInitializationDetection', 'Simplified');   % 指定不足の初期化の検出 
cs.set_param('UniqueDataStoreMsg', 'none');   % データ ストア名の重複 
cs.set_param('WriteAfterReadMsg', 'UseLocalSettings');   % 読み取り後の書き込みを検出 
cs.set_param('WriteAfterWriteMsg', 'UseLocalSettings');   % 書き込み後の書き込みを検出 

% 診断:型変換 ペイン
cs.set_param('FixptConstOverflowMsg', 'none');   % オーバーフローの検出 
cs.set_param('FixptConstPrecisionLossMsg', 'none');   % 桁落ちの検出 
cs.set_param('FixptConstUnderflowMsg', 'none');   % アンダーフローの検出 
cs.set_param('Int32ToFloatConvMsg', 'warning');   % 32 ビットの整数を単精度浮動小数点に変換 
cs.set_param('UnnecessaryDatatypeConvMsg', 'none');   % 不必要な型変換 
cs.set_param('VectorMatrixConversionMsg', 'none');   % ベクトル/行列ブロック入力変換 

% 診断:接続性 ペイン
cs.set_param('BusNameAdapt', 'WarnAndRepair');   % バス選択を修復 
cs.set_param('BusObjectLabelMismatch', 'warning');   % 要素名の不一致 
cs.set_param('FcnCallInpInsideContextMsg', 'EnableAllAsError');   % コンテキスト依存の入力 
cs.set_param('InvalidFcnCallConnMsg', 'error');   % 無効な関数呼び出し接続 
cs.set_param('NonBusSignalsTreatedAsBus', 'none');   % バス信号として扱われる非バス信号 
cs.set_param('RootOutportRequireBusObject', 'warning');   % ルートの Outport ブロックの未定義のバス オブジェクト 
cs.set_param('SignalLabelMismatchMsg', 'none');   % 信号ラベルの不一致 
cs.set_param('StrictBusMsg', 'ErrorLevel1');   % ベクトルとして扱われるバス信号 
cs.set_param('UnconnectedInputMsg', 'warning');   % 接続されていないブロックの入力端子 
cs.set_param('UnconnectedLineMsg', 'warning');   % 接続されていないライン 
cs.set_param('UnconnectedOutputMsg', 'warning');   % 接続されていないブロックの出力端子 

% 診断:互換性 ペイン
cs.set_param('FrameProcessingCompatibilityMsg', 'warning');   % ブロックの動作は信号のフレームの状態に依存する 
cs.set_param('SFcnCompatibilityMsg', 'none');   % アップグレードの必要な S-function 

% 診断:モデル参照 ペイン
cs.set_param('ModelReferenceCSMismatchMessage', 'none');   % モデル コンフィギュレーションの不一致 
cs.set_param('ModelReferenceDataLoggingMessage', 'warning');   % サポートされないデータ ログ 
cs.set_param('ModelReferenceIOMismatchMessage', 'none');   % 端子とパラメーターの不一致 
cs.set_param('ModelReferenceIOMsg', 'none');   % 無効なルートの Inport/Outport ブロックの接続 
cs.set_param('ModelReferenceVersionMismatchMessage', 'none');   % Model ブロック バージョンの不一致 

% 診断:保存 ペイン
cs.set_param('SaveWithDisabledLinksMsg', 'warning');   % ブロック線図は無効化されたライブラリ リンクを含む 
cs.set_param('SaveWithParameterizedLinksMsg', 'warning');   % ブロック線図はパラメーター付きのライブラリ リンクを含む 

% 診断:Stateflow ペイン
cs.set_param('SFInvalidInputDataAccessInChartInitDiag', 'warning');   % チャート初期化の無効な入力データ アクセス 
cs.set_param('SFNoUnconditionalDefaultTransitionDiag', 'warning');   % 無条件のデフォルト遷移がない 
cs.set_param('SFTransitionActionBeforeConditionDiag', 'warning');   % 条件アクションの前に指定された遷移アクション 
cs.set_param('SFTransitionOutsideNaturalParentDiag', 'warning');   % 自然な親以外からの遷移 
cs.set_param('SFUnconditionalTransitionShadowingDiag', 'warning');   % 遷移の優先順位 
cs.set_param('SFUndirectedBroadcastEventsDiag', 'warning');   % 指示のないイベント ブロードキャスト 
cs.set_param('SFUnexpectedBacktrackingDiag', 'warning');   % 予期せぬバックトラッキング 
cs.set_param('SFUnusedDataAndEventsDiag', 'warning');   % 未使用のデータとイベント 

% ハードウェア実行 ペイン
cs.set_param('ProdIntDivRoundTo', 'Undefined');   % 符号付き整数の除算の丸め 
cs.set_param('ProdLargestAtomicFloat', 'None');   % 浮動小数点 
cs.set_param('ProdLargestAtomicInteger', 'Char');   % 整数 

% モデル参照 ペイン
cs.set_param('EnableParallelModelReferenceBuilds', 'off');   % 並列モデルの参照ビルドを有効化 
cs.set_param('ModelDependencies', '');   % モデルの依存関係 
cs.set_param('ModelReferenceNumInstancesAllowed', 'Multi');   % 最上位モデルごとに可能なインスタンスの総数 
cs.set_param('ModelReferencePassRootInputsByReference', 'on');   % コード生成で固定サイズのスカラーのルート入力を値渡しで行う 
cs.set_param('ParallelModelReferenceMATLABWorkerInit', 'None');   % ビルドに対する MATLAB ワーカー初期化 
cs.set_param('PropagateSignalLabelsOutOfModel', 'off');   % 参照モデルの外のすべての信号のラベルを伝播 
cs.set_param('PropagateVarSize', 'Infer from blocks in model');   % 可変サイズの信号のサイズを伝播 

% シミュレーション ターゲット 一般 ペイン
cs.set_param('SFSimEcho', 'on');   % セミコロンなしのエコー表現 
cs.set_param('SFSimEnableDebug', 'on');   % デバッグ/アニメーションを有効にする 
cs.set_param('SFSimOverflowDetection', 'on');   % オーバーフロー時にラップを検出 (デバッグあり) 
cs.set_param('SimBuildMode', 'sf_incremental_build');   % シミュレーション ターゲットのビルド モード 
cs.set_param('SimCtrlC', 'on');   % 応答を保証 
cs.set_param('SimGenImportedTypeDefs', 'off');   % インポートしたバスと列挙型に対して typedef を生成する 
cs.set_param('SimIntegrity', 'on');   % メモリの整合性を保証 

% シミュレーション ターゲット:カスタム コード ペイン
cs.set_param('SimCustomHeaderCode', '');   % ヘッダー ファイル 
cs.set_param('SimCustomInitializer', '');   % 初期化関数 
cs.set_param('SimCustomSourceCode', '');   % ソース ファイル 
cs.set_param('SimCustomTerminator', '');   % 終了関数 
cs.set_param('SimParseCustomCode', 'on');   % カスタム コードのシンボルを解析 
cs.set_param('SimUserIncludeDirs', '');   % インクルード ディレクトリ 
cs.set_param('SimUserLibraries', '');   % ライブラリ 
cs.set_param('SimUserSources', '');   % ソース ファイル 

% シミュレーション ターゲット:シンボル ペイン
cs.set_param('SimReservedNameArray', '');   % 予約名 

% コード生成 一般 ペイン
cs.set_param('CheckMdlBeforeBuild', 'Off');   % コード生成前にモデルをチェック 
cs.set_param('GenCodeOnly', 'on');   % コード生成のみ 
cs.set_param('IgnoreCustomStorageClasses', 'off');   % カスタム ストレージ クラスを無視する 
cs.set_param('IgnoreTestpoints', 'off');   % テスト ポイント信号を無視 
cs.set_param('MakeCommand', 'make_rtw');   % make コマンド 
cs.set_param('ObjectivePriorities', '');   % 優先順位が設定された目的 
cs.set_param('PackageGeneratedCodeAndArtifacts', 'off');   % コードとアイテムのパッケージ化 
cs.set_param('PackageName', '');   % Zip ファイル名 
cs.set_param('TargetLang', 'C');   % 言語 
cs.set_param('TemplateMakefile', 'ert_default_tmf');   % テンプレート makefile 

% コード生成:コメント ペイン
cs.set_param('MATLABFcnDesc', 'off');   % MATLAB 関数のヘルプ テキスト 
cs.set_param('MATLABSourceComments', 'off');   % コメントを示す MATLAB ソース コード 

% コード生成:シンボル ペイン
cs.set_param('CustomSymbolStrBlkIO', 'rtb_$N$M');   % ローカルなブロックの出力変数 
cs.set_param('CustomSymbolStrFcn', '$R$N$M$F');   % サブシステムのメソッド 
cs.set_param('CustomSymbolStrFcnArg', 'rt$I$N$M');   % サブシステムのメソッド引数 
cs.set_param('CustomSymbolStrField', '$N$M');   % グローバルなタイプのフィールド名 
cs.set_param('CustomSymbolStrGlobalVar', '$R$N$M');   % グローバル変数 
cs.set_param('CustomSymbolStrMacro', '$R$N$M');   % 定数のマクロ 
cs.set_param('CustomSymbolStrTmpVar', '$N$M');   % ローカルな一時変数 
cs.set_param('CustomSymbolStrType', '$N$R$M_T');   % グローバルなタイプ 
cs.set_param('CustomSymbolStrUtil', '$N$C');   % 共有ユーティリティ 
cs.set_param('DefineNamingRule', 'None');   % #define 定義名 
cs.set_param('InlinedPrmAccess', 'Literals');   % スカラーのインライン パラメーターの生成 
cs.set_param('InternalIdentifier', 'Shortened');   % システム生成の識別子 
cs.set_param('MangleLength', 1);   % マングルの最小の長さ 
cs.set_param('MaxIdLength', 31);   % 識別子の最大の長さ 
cs.set_param('ReservedNameArray', '');   % 予約名 
cs.set_param('UseSimReservedNames', 'off');   % シミュレーション ターゲットと同じ予約名を使用 

% コード生成:カスタム コード ペイン
cs.set_param('CustomHeaderCode', '');   % ヘッダー ファイル 
cs.set_param('CustomInclude', '');   % インクルード ディレクトリ 
cs.set_param('CustomInitializer', '');   % 初期化関数 
cs.set_param('CustomLibrary', '');   % ライブラリ 
cs.set_param('CustomSource', '');   % ソース ファイル 
cs.set_param('CustomSourceCode', '');   % ソース ファイル 
cs.set_param('CustomTerminator', '');   % 終了関数 
cs.set_param('RTWUseSimCustomCode', 'off');   % シミュレーション ターゲットと同じカスタム コードの設定を使用 

% コード生成:デバッグ ペイン
cs.set_param('ProfileTLC', 'off');   % TLC プロファイル 
cs.set_param('RTWVerbose', 'on');   % 詳細なビルド (コマンド表示) 
cs.set_param('RetainRTWFile', 'off');   % .rtw ファイルを残す 
cs.set_param('TLCAssert', 'off');   % TLC アサーションを有効にする 
cs.set_param('TLCCoverage', 'off');   % コード生成時に TLC カバレッジを実行 
cs.set_param('TLCDebug', 'off');   % コード生成時に TLC デバッガーを実行 

% コード生成:インターフェイス ペイン
cs.set_param('CodeInterfacePackaging', 'Nonreusable function');   % コード インターフェイスのパッケージ化 
cs.set_param('CodeReplacementLibrary', 'AUTOSAR 4.0');   % コード置換ライブラリ 
cs.set_param('CombineSignalStateStructs', 'on');   % 信号と状態の構造の統合 
cs.set_param('GenerateASAP2', 'off');   % インターフェイス 
cs.set_param('GeneratePreprocessorConditionals', 'Use local settings');   % プリプロセッサの条件を生成 
cs.set_param('SupportAbsoluteTime', 'on');   % 絶対時間 
cs.set_param('SupportComplex', 'off');   % 複素数 
cs.set_param('SupportVariableSizeSignals', 'off');   % 可変サイズの信号 
cs.set_param('TargetLangStandard', 'C89/C90 (ANSI)');   % 標準の数学ライブラリ 
cs.set_param('UtilityFuncGeneration', 'Auto');   % 共有コードの配置 

% コード生成:検証 ペイン
cs.set_param('CodeExecutionProfileVariable', 'executionProfile');   % ワークスペース変数 
cs.set_param('CodeExecutionProfiling', 'off');   % タスク実行時間を計測する 
cs.set_param('CodeProfilingInstrumentation', 'off');   % 関数の実行時間を計測する 
cs.set_param('CodeProfilingSaveOptions', 'SummaryOnly');   % 保存オプション 
cs.set_param('CreateSILPILBlock', 'None');   % ブロックの作成 
cs.set_param('SILDebugging', 'off');   % SIL シミュレーションでソースレベル デバッグを有効にする 

% コード生成:コード スタイル ペイン
cs.set_param('CastingMode', 'Nominal');   % キャスト モード 
cs.set_param('ConvertIfToSwitch', 'off');   % if-elseif-else のパターンを switch-case ステートメントに変換する 
cs.set_param('IndentSize', '2');   % インデント サイズ 
cs.set_param('IndentStyle', 'K&R');   % インデント スタイル 
cs.set_param('ParenthesesLevel', 'Nominal');   % かっこのレベル 
cs.set_param('PreserveExpressionOrder', 'off');   % 式の演算子の順番を保持する 
cs.set_param('PreserveExternInFcnDecls', 'on');   % 関数の宣言で extern キーワードを保持する 
cs.set_param('PreserveIfCondition', 'off');   % if ステートメント内の条件式を保持する 
cs.set_param('SuppressUnreachableDefaultCases', 'off');   % 到達不可能な場合、Stateflow switch ステートメントのdefault ケースを生成しない 

% コード生成:テンプレート ペイン
cs.set_param('ERTCustomFileTemplate', 'example_file_process.tlc');   % ファイル カスタマイズ テンプレート 
cs.set_param('ERTDataHdrFileTemplate', 'ert_code_template.cgt');   % ヘッダー ファイル テンプレート 
cs.set_param('ERTDataSrcFileTemplate', 'ert_code_template.cgt');   % ソース ファイル テンプレート 
cs.set_param('ERTHdrFileBannerTemplate', 'ert_code_template.cgt');   % ヘッダー ファイル テンプレート 
cs.set_param('ERTSrcFileBannerTemplate', 'ert_code_template.cgt');   % ソース ファイル テンプレート 

% コード生成:コード配置 ペイン
cs.set_param('ERTFilePackagingFormat', 'Compact');   % ファイル パッケージ化形式 
cs.set_param('EnableDataOwnership', 'off');   % データ定義の配置にデータ オブジェクトからオーナーを使用する 
cs.set_param('IncludeFileDelimiter', 'Auto');   % #ファイル区切り文字を含める 
cs.set_param('ParamTuneLevel', 10);   % パラメーター調整レベル 
cs.set_param('SignalDisplayLevel', 10);   % 信号の表示レベル 

% コード生成:データ型置換 ペイン
cs.set_param('ReplacementTypes', struct('double','','single','','int32','int32','int16','int16','int8','int8','uint32','uint32','uint16','uint16','uint8','uint8','boolean','ActionRequest','int','','uint','uint','char',''));   % 置換タイプ 

% コード生成:メモリ セクション ペイン
cs.set_param('MemSecDataConstants', 'Default');   % 定数 
cs.set_param('MemSecDataIO', 'Default');   % 入力/出力 
cs.set_param('MemSecDataInternal', 'Default');   % 内部データ 
cs.set_param('MemSecDataParameters', 'Default');   % パラメーター 
cs.set_param('MemSecFuncExecute', 'Default');   % 実行 
cs.set_param('MemSecFuncInitTerm', 'Default');   % 初期化/終了 
cs.set_param('MemSecFuncSharedUtil', 'Default');   % 共有ユーティリティ 
cs.set_param('MemSecPackage', '--- None ---');   % パッケージ 

% コード生成:AUTOSAR Code Generation Options ペイン
cs.set_param('AutosarCompilerAbstraction', 'off');   % Use AUTOSAR compiler abstraction macros 
cs.set_param('AutosarMatrixIOAsArray', 'off');   % Support root-level matrix I/O using one-dimensional arrays 
cs.set_param('AutosarMaxShortNameLength', 32);   % Maximum SHORT-NAME length 
cs.set_param('AutosarSchemaVersion', '4.0');   % Generate XML file for schema version 

