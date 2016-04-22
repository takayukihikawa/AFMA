%---------------------------------------------------------------------------
%  ���������R���t�B�M�����[�V���� �Z�b�g�� MATLAB �֐� 27-Mar-2015 18:43:16
%  MATLAB �o�[�W����: 8.4.0.150421 (R2014b)
%---------------------------------------------------------------------------

function cs=MyAutosarConfig()

cs = Simulink.ConfigSet;
 
% �I���W�i���̃R���t�B�M�����[�V���� �Z�b�g�̃o�[�W����: 1.14.3
if cs.versionCompare('1.14.3') < 0
    error('Simulink:MFileVersionViolation', '�^�[�Q�b�g�̃R���t�B�M�����[�V���� �Z�b�g�̃o�[�W�����̓I���W�i���̃R���t�B�M�����[�V���� �Z�b�g���Â��ł��B');
end
 
% �I���W�i���̊������G���R�[�h: Shift_JIS
if ~strcmpi(get_param(0, 'CharacterEncoding'), 'Shift_JIS')
    warning('Simulink:EncodingUnMatched', '�^�[�Q�b�g�̕����G���R�[�h (%s) �̓I���W�i�� (%s) �ƈႢ�܂��B',  get_param(0, 'CharacterEncoding'), 'Shift_JIS');
end
 
% �ȉ��̃R�}���h�̏�����ύX���Ȃ��ł��������B�p�����[�^�[�ԂɈˑ��֌W������܂��B
cs.set_param('SystemTargetFile', 'autosar.tlc');   % �V�X�e�� �^�[�Q�b�g �t�@�C��
cs.set_param('GenerateComments', 'on');   % �R�����g���܂߂� 
cs.set_param('SimulinkBlockComments', 'off');   % Simulink �u���b�N / Stateflow �I�u�W�F�N�g�̃R�����g 
cs.set_param('ShowEliminatedStatement', 'on');   % �������ꂽ�u���b�N��\�� 
cs.set_param('OperatorAnnotations', 'off');   % ���Z�q�̒��� 
cs.set_param('ForceParamTrailComments', 'off');   % SimulinkGlobal �X�g���[�W �N���X�ɑ΂���ڍׂȃR�����g 
cs.set_param('InsertBlockDesc', 'off');   % Simulink �u���b�N�̐��� 
cs.set_param('SimulinkDataObjDesc', 'off');   % Simulink �f�[�^ �I�u�W�F�N�g�̐��� 
cs.set_param('EnableCustomComments', 'off');   % �J�X�^�� �R�����g (MPT �I�u�W�F�N�g�̂�) 
cs.set_param('SFDataObjDesc', 'off');   % Stateflow �I�u�W�F�N�g�̐��� 
cs.set_param('ReqsInCode', 'off');   % �v���̃u���b�N �R�����g�� 
cs.set_param('IncludeHyperlinkInReport', 'off');   % �R�[�h���烂�f���� 
cs.set_param('GenerateReport', 'off');   % �R�[�h�������|�[�g���쐬 
cs.set_param('GenerateTraceInfo', 'off');   % ���f������R�[�h�� 
cs.set_param('GenerateTraceReport', 'off');   % �폜���ꂽ / �o�[�`���� �u���b�N 
cs.set_param('GenerateTraceReportSl', 'off');   % �ǐՉ\�� Simulink �u���b�N 
cs.set_param('GenerateTraceReportSf', 'off');   % �ǐՉ\�� Stateflow �I�u�W�F�N�g 
cs.set_param('GenerateTraceReportEml', 'off');   % �ǐՉ\�� MATLAB �֐� 
cs.set_param('LaunchReport', 'off');   % ���|�[�g�������I�ɊJ�� 
cs.set_param('GenerateCodeReplacementReport', 'off');   % �R�[�h�̒u���������g���K�[����u���b�N���܂Ƃ߂� 
cs.set_param('GenerateCodeMetricsReport', 'off');   % �ÓI�R�[�h�w�W 
cs.set_param('GenerateWebview', 'off');   % ���f���� Web �r���[�𐶐� 
cs.set_param('InlineParams', 'on');   % �C�����C�� �p�����[�^�[ 
cs.set_param('OptimizeBlockIOStorage', 'on');   % �M���X�g���[�W�̍ė��p 
cs.set_param('ExpressionFolding', 'on');   % �]���ȃ��[�J���ϐ��̍폜 (���̂����ݍ��ݕ\��) 
cs.set_param('ParamNamingRule', 'None');   % �p�����[�^�[�� 
cs.set_param('RTWCompilerOptimization', 'Off');   % �R���p�C���œK�����x�� 
cs.set_param('SignalNamingRule', 'None');   % �M���� 
cs.set_param('UpdateModelReferenceTargets', 'IfOutOfDateOrStructuralChange');   % ���r���h 
cs.set_param('GenerateSampleERTMain', 'off');   % ���C�� �v���O������̐��� 
cs.set_param('ProdHWDeviceType', '32-bit Generic');   % �f�o�C�X �^�C�v 
cs.set_param('EnableUserReplacementTypes', 'on');   % �����R�[�h���̃f�[�^�^����u������ 
cs.set_param('ERTMultiwordTypeDef', 'System defined');   % �}���`���[�h �^�C�v�̒�` 
cs.set_param('EnableMemcpy', 'on');   % �x�N�g���̊��蓖�Ăɑ΂��� memcpy ���g�p 
cs.set_param('GenerateMakefile', 'on');   % makefile �̐��� 
cs.set_param('GlobalDataDefinition', 'Auto');   % �f�[�^��` 
cs.set_param('GlobalDataReference', 'Auto');   % �f�[�^�錾 
cs.set_param('SaveFinalState', 'off');   % �ŏI��� 
cs.set_param('SignalLogging', 'on');   % �M���̃��O 
cs.set_param('TargetUnknown', 'off');   % �^�[�Q�b�g���s���ł� 
cs.set_param('DSMLogging', 'on');   % �f�[�^ �X�g�A 
cs.set_param('EnableConcurrentExecution', 'off');   % EnableConcurrentExecution 
cs.set_param('LimitDataPoints', 'on');   % �f�[�^�_�̐��� 
cs.set_param('LoadExternalInput', 'off');   % ���� 
cs.set_param('LoadInitialState', 'off');   % ������� 
cs.set_param('ReturnWorkspaceOutputs', 'off');   % �P��̃I�u�W�F�N�g�Ƃ��ăV�~�����[�V�����o�͂�ۑ� 
cs.set_param('SaveOutput', 'on');   % �o�� 
cs.set_param('SaveState', 'off');   % ��� 
cs.set_param('SaveTime', 'on');   % ���� 
cs.set_param('SupportNonInlinedSFcns', 'off');   % �C�����C���łȂ� S-Function 
cs.set_param('PurelyIntegerCode', 'off');   % ���������_�� 
cs.set_param('SupportNonFinite', 'off');   % ��L���� 
cs.set_param('MatFileLogging', 'off');   % MAT �t�@�C���̃��O 
cs.set_param('SuppressErrorStatus', 'on');   % ���A���^�C�� ���f���̃f�[�^�\�����̃G���[ �X�e�[�^�X���\���ɂ��� 
cs.set_param('SupportContinuousTime', 'off');   % �A������ 
cs.set_param('IncludeMdlTerminateFcn', 'off');   % �I���֐��̐��� 
cs.set_param('GRTInterface', 'off');   % �N���V�b�N �R�[�� �C���^�[�t�F�C�X 
cs.set_param('CombineOutputUpdateFcns', 'on');   % 1 �̏o��/�X�V�֐� 
cs.set_param('ModelReferenceMinAlgLoopOccurrences', 'off');   % �㐔���[�v�̔����̍ŏ��� 
cs.set_param('PortableWordSizes', 'off');   % �ڐA�\�ȃ��[�h �T�C�Y��L���ɂ��� 
cs.set_param('ProdEqTarget', 'on');   % �e�X�g �n�[�h�E�F�A�𐻕i�n�[�h�E�F�A�Ɠ����ɂ��� 
cs.set_param('SolverType', 'Fixed-step');   % �^�C�v 
cs.set_param('AutoInsertRateTranBlk', 'off');   % �f�[�^�]���ɑ΂��郌�[�g�ϊ��������I�Ɏ�舵�� 
cs.set_param('ExtMode', 'off');   % �C���^�[�t�F�C�X 
 
% �ȉ��̃R�}���h�ɂ͈ˑ��֌W������܂���B
cs.set_param('Description', '');  % ����
cs.set_param('Name', 'Configuration');  % ���O

% �\���o�[ �y�C��
cs.set_param('FixedStep', 'auto');   % �Œ�X�e�b�v �T�C�Y (��{�T���v������) 
cs.set_param('PositivePriorityOrder', 'off');   % �D�揇�ʂ������ꍇ�̓^�X�N�̗D�揇�ʂ��������Ƃ����� 
cs.set_param('SampleTimeConstraint', 'Unconstrained');   % �����I�ȃT���v�����Ԃ̐��� 
cs.set_param('Solver', 'ode3');   % �\���o�[ 
cs.set_param('SolverMode', 'Auto');   % �����I�ȃT���v�����Ԃ̃^�X�N ���[�h 
cs.set_param('StartTime', '0.0');   % �J�n���� 
cs.set_param('StopTime', '10');   % �I������ 

% �f�[�^�̃C���|�[�g/�G�N�X�|�[�g �y�C��
cs.set_param('DSMLoggingName', 'dsmout');   % �f�[�^ �X�g�A�̃��O�� 
cs.set_param('Decimation', '1');   % �Ԉ��� 
cs.set_param('InspectSignalLogs', 'off');   % ���[�N�X�y�[�X �f�[�^�̃��O���V�~�����[�V���� �f�[�^ �C���X�y�N�^�[�ɋL�^ 
cs.set_param('MaxDataPoints', '1000');   % �f�[�^�_�̐��� 
cs.set_param('OutputSaveName', 'yout');   % �o�� 
cs.set_param('SaveFormat', 'Array');   % �`�� 
cs.set_param('SignalLoggingName', 'logsout');   % �M���̃��O�� 
cs.set_param('SignalLoggingSaveFormat', 'Dataset');   % �M���̃��O�`�� 
cs.set_param('TimeSaveName', 'tout');   % ���� 
cs.set_param('VisualizeSimOutput', 'on');   % �I�������M���̃V�~�����[�V���� �f�[�^ �C���X�y�N�^�[�ւ̃��C�u �X�g���[�~���O��L���ɂ��� 

% �œK�� �y�C��
cs.set_param('AccelVerboseBuild', 'off');   % �ڍׂȃA�N�Z�����[�^�̃r���h 
cs.set_param('BlockReduction', 'on');   % �u���b�N�팸 
cs.set_param('BooleanDataType', 'on');   % Boolean �f�[�^ (�� double) �Ƃ��Ę_���M�������� 
cs.set_param('ConditionallyExecuteInputs', 'on');   % �����t�����͕�����s 
cs.set_param('DefaultUnderspecifiedDataType', 'double');   % �w��s���̃f�[�^�^�̊���l 
cs.set_param('EfficientFloat2IntCast', 'off');   % ���������_����͈͊O�̒l���܂ސ����ϊ��ւ̃R�[�h���폜 
cs.set_param('EfficientMapNaN2IntZero', 'on');   % ���������_���琮���ւ̕ϊ��Ł@NaN �� 0 �Ƀ}�b�s���O����ĖO�a�����R�[�h���폜 
cs.set_param('InitFltsAndDblsToZero', 'off');   % float �� double �� 0.0 �ɏ��������邽�߂� memset ���g�p 
cs.set_param('LifeSpan', '1');   % �A�v���P�[�V�����̃��C�t�X�p�� (��) 
cs.set_param('NoFixptDivByZeroProtection', 'off');   % ���Z���Z�̗�O�����ɑ΂��ĕی삳�ꂽ�R�[�h�̍폜 
cs.set_param('OptimizeModelRefInitCode', 'on');   % ���f���Q�Ɨp�̏������R�[�h���œK�� 
cs.set_param('SimCompilerOptimization', 'Off');   % �R���p�C���œK�����x�� 
cs.set_param('UseDivisionForNetSlopeComputation', 'Off');   % �Œ菬���_�̐������z�v�Z�ɏ��Z���g�p 
cs.set_param('UseFloatMulNetSlope', 'off');   % ���������_�̏�Z���g�p���Č��z�ݒ��␳ 
cs.set_param('UseSpecifiedMinMax', 'off');   % �w�肵���ŏ��l�ƍő�l���g�p�����œK�� 
cs.set_param('ZeroExternalMemoryAtStartup', 'off');   % ���[�g ���x�� I/O �� 0 �̏��������폜 
cs.set_param('ZeroInternalMemoryAtStartup', 'off');   % �����f�[�^�� 0 �̏��������폜 

% �œK��:�M���ƃp�����[�^�[ �y�C��
cs.set_param('BooleansAsBitfields', 'off');   % Boolean �f�[�^���r�b�g �t�B�[���h�Ƀp�b�L���O 
cs.set_param('BufferReuse', 'on');   % ���[�J�� �u���b�N�o�͂̍ė��p 
cs.set_param('GlobalBufferReuse', 'on');   % �O���[�o�� �u���b�N�o�͂̍ė��p 
cs.set_param('GlobalVariableUsage', 'Minimize global data access');   % �O���[�o�� �f�[�^ �A�N�Z�X�̍œK�� 
cs.set_param('InlineInvariantSignals', 'on');   % �C�����C���s�ϐM�� 
cs.set_param('InlinedParameterPlacement', 'NonHierarchical');   % �p�����[�^�[�\���� 
cs.set_param('LocalBlockOutputs', 'on');   % ���[�J���ȃu���b�N�̏o�͂�L���ɂ��� 
cs.set_param('MaxStackSize', 'Inherit from target');   % �ő�X�^�b�N �T�C�Y (�o�C�g) 
cs.set_param('MemcpyThreshold', 64);   % memcpy �������l (�o�C�g) 
cs.set_param('PassReuseOutputArgsAs', 'Individual arguments');   % �ė��p�\�ȃT�u�V�X�e���̏o�͂�n�� 
cs.set_param('RollThreshold', 5);   % ���[�v�W�J�̂������l 
cs.set_param('StrengthReduction', 'off');   % �z��̃C���f�b�N�X���ȗ������� 

% �f�f Solver �y�C��
cs.set_param('AlgebraicLoopMsg', 'warning');   % �㐔���[�v 
cs.set_param('ArtificialAlgebraicLoopMsg', 'warning');   % �㐔���[�v�̍ŏ��� 
cs.set_param('BlockPriorityViolationMsg', 'warning');   % �u���b�N�D�揇�ʈᔽ 
cs.set_param('ConsistencyChecking', 'none');   % �\���o�[ �f�[�^�̕s���� 
cs.set_param('MaxConsecutiveZCsMsg', 'error');   % �A���I�ȃ[���N���b�V���O�ᔽ 
cs.set_param('MinStepSizeMsg', 'warning');   % �ŏ��X�e�b�v �T�C�Y�ᔽ 
cs.set_param('ModelReferenceExtraNoncontSigs', 'error');   % �s�v�ȗ��U�����M�� 
cs.set_param('SimStateInterfaceChecksumMismatchMsg', 'warning');   % SimState �C���^�[�t�F�C�X�̃`�F�b�N�T���̕s��v 
cs.set_param('SimStateOlderReleaseMsg', 'error');   % �Â������[�X����� SimState �I�u�W�F�N�g 
cs.set_param('SolverPrmCheckMsg', 'warning');   % �����\���o�[ �p�����[�^�[�̑I�� 
cs.set_param('StateNameClashWarn', 'none');   % ��Ԗ��̏Փ� 
cs.set_param('TimeAdjustmentMsg', 'none');   % �T���v�� �q�b�g�̎��Ԓ��� 
cs.set_param('UnknownTsInhSupMsg', 'warning');   % �w��̂Ȃ��T���v�����Ԃ̌p�� 

% �f�f:�T���v������ �y�C��
cs.set_param('DiscreteInheritContinuousMsg', 'warning');   % �A���Ƃ��ėp�����闣�U 
cs.set_param('InheritedTsInSrcMsg', 'warning');   % -1 �̃T���v�����Ԃ��w�肳�ꂽ�\�[�X �u���b�N 
cs.set_param('MultiTaskCondExecSysMsg', 'error');   % �}���`�^�X�N�̏����t�����s�T�u�V�X�e�� 
cs.set_param('MultiTaskRateTransMsg', 'error');   % �}���`�^�X�N ���[�g�ϊ� 
cs.set_param('SigSpecEnsureSampleTimeMsg', 'warning');   % Signal Specification �u���b�N�Ŏw�肳�ꂽ�T���v�����Ԃɂ��� 
cs.set_param('SingleTaskRateTransMsg', 'none');   % �V���O���^�X�N ���[�g�ϊ� 
cs.set_param('TasksWithSamePriorityMsg', 'warning');   % �����D�揇�ʂ����^�X�N 

% �f�f:�f�[�^�L���� �y�C��
cs.set_param('ArrayBoundsChecking', 'none');   % �z��͈͂̒��� 
cs.set_param('AssertControl', 'UseLocalSettings');   % Model Verification �u���b�N��L���ɂ��� 
cs.set_param('CheckMatrixSingularityMsg', 'none');   % ���ْl�s��ɂ�鏜�Z 
cs.set_param('IntegerOverflowMsg', 'warning');   % �I�[�o�[�t���[�Ń��b�v 
cs.set_param('IntegerSaturationMsg', 'warning');   % �I�[�o�[�t���[�ŖO�a 
cs.set_param('MultiTaskDSMMsg', 'error');   % �}���`�^�X�N �f�[�^ �X�g�A 
cs.set_param('ParameterDowncastMsg', 'error');   % �_�E���L���X�g�̌��o 
cs.set_param('ParameterOverflowMsg', 'error');   % �I�[�o�[�t���[�̌��o 
cs.set_param('ParameterPrecisionLossMsg', 'warning');   % �������̌��o 
cs.set_param('ParameterTunabilityLossMsg', 'warning');   % �����\���̏��������o 
cs.set_param('ParameterUnderflowMsg', 'none');   % �A���_�[�t���[�̌��o 
cs.set_param('RTPrefix', 'error');   % ���ʎq�� "rt" �ړ��� 
cs.set_param('ReadBeforeWriteMsg', 'UseLocalSettings');   % �������ݑO�̓ǂݎ������o 
cs.set_param('SignalInfNanChecking', 'none');   % Inf �܂��� NaN �̃u���b�N�o�� 
cs.set_param('SignalRangeChecking', 'none');   % �V�~�����[�V�����͈͂̃`�F�b�N 
cs.set_param('SignalResolutionControl', 'UseLocalSettings');   % �M���̊֘A�t�� 
cs.set_param('UnderSpecifiedDataTypeMsg', 'none');   % �w��s���̃f�[�^�^ 
cs.set_param('UnderspecifiedInitializationDetection', 'Simplified');   % �w��s���̏������̌��o 
cs.set_param('UniqueDataStoreMsg', 'none');   % �f�[�^ �X�g�A���̏d�� 
cs.set_param('WriteAfterReadMsg', 'UseLocalSettings');   % �ǂݎ���̏������݂����o 
cs.set_param('WriteAfterWriteMsg', 'UseLocalSettings');   % �������݌�̏������݂����o 

% �f�f:�^�ϊ� �y�C��
cs.set_param('FixptConstOverflowMsg', 'none');   % �I�[�o�[�t���[�̌��o 
cs.set_param('FixptConstPrecisionLossMsg', 'none');   % �������̌��o 
cs.set_param('FixptConstUnderflowMsg', 'none');   % �A���_�[�t���[�̌��o 
cs.set_param('Int32ToFloatConvMsg', 'warning');   % 32 �r�b�g�̐�����P���x���������_�ɕϊ� 
cs.set_param('UnnecessaryDatatypeConvMsg', 'none');   % �s�K�v�Ȍ^�ϊ� 
cs.set_param('VectorMatrixConversionMsg', 'none');   % �x�N�g��/�s��u���b�N���͕ϊ� 

% �f�f:�ڑ��� �y�C��
cs.set_param('BusNameAdapt', 'WarnAndRepair');   % �o�X�I�����C�� 
cs.set_param('BusObjectLabelMismatch', 'warning');   % �v�f���̕s��v 
cs.set_param('FcnCallInpInsideContextMsg', 'EnableAllAsError');   % �R���e�L�X�g�ˑ��̓��� 
cs.set_param('InvalidFcnCallConnMsg', 'error');   % �����Ȋ֐��Ăяo���ڑ� 
cs.set_param('NonBusSignalsTreatedAsBus', 'none');   % �o�X�M���Ƃ��Ĉ������o�X�M�� 
cs.set_param('RootOutportRequireBusObject', 'warning');   % ���[�g�� Outport �u���b�N�̖���`�̃o�X �I�u�W�F�N�g 
cs.set_param('SignalLabelMismatchMsg', 'none');   % �M�����x���̕s��v 
cs.set_param('StrictBusMsg', 'ErrorLevel1');   % �x�N�g���Ƃ��Ĉ�����o�X�M�� 
cs.set_param('UnconnectedInputMsg', 'warning');   % �ڑ�����Ă��Ȃ��u���b�N�̓��͒[�q 
cs.set_param('UnconnectedLineMsg', 'warning');   % �ڑ�����Ă��Ȃ����C�� 
cs.set_param('UnconnectedOutputMsg', 'warning');   % �ڑ�����Ă��Ȃ��u���b�N�̏o�͒[�q 

% �f�f:�݊��� �y�C��
cs.set_param('FrameProcessingCompatibilityMsg', 'warning');   % �u���b�N�̓���͐M���̃t���[���̏�ԂɈˑ����� 
cs.set_param('SFcnCompatibilityMsg', 'none');   % �A�b�v�O���[�h�̕K�v�� S-function 

% �f�f:���f���Q�� �y�C��
cs.set_param('ModelReferenceCSMismatchMessage', 'none');   % ���f�� �R���t�B�M�����[�V�����̕s��v 
cs.set_param('ModelReferenceDataLoggingMessage', 'warning');   % �T�|�[�g����Ȃ��f�[�^ ���O 
cs.set_param('ModelReferenceIOMismatchMessage', 'none');   % �[�q�ƃp�����[�^�[�̕s��v 
cs.set_param('ModelReferenceIOMsg', 'none');   % �����ȃ��[�g�� Inport/Outport �u���b�N�̐ڑ� 
cs.set_param('ModelReferenceVersionMismatchMessage', 'none');   % Model �u���b�N �o�[�W�����̕s��v 

% �f�f:�ۑ� �y�C��
cs.set_param('SaveWithDisabledLinksMsg', 'warning');   % �u���b�N���}�͖��������ꂽ���C�u���� �����N���܂� 
cs.set_param('SaveWithParameterizedLinksMsg', 'warning');   % �u���b�N���}�̓p�����[�^�[�t���̃��C�u���� �����N���܂� 

% �f�f:Stateflow �y�C��
cs.set_param('SFInvalidInputDataAccessInChartInitDiag', 'warning');   % �`���[�g�������̖����ȓ��̓f�[�^ �A�N�Z�X 
cs.set_param('SFNoUnconditionalDefaultTransitionDiag', 'warning');   % �������̃f�t�H���g�J�ڂ��Ȃ� 
cs.set_param('SFTransitionActionBeforeConditionDiag', 'warning');   % �����A�N�V�����̑O�Ɏw�肳�ꂽ�J�ڃA�N�V���� 
cs.set_param('SFTransitionOutsideNaturalParentDiag', 'warning');   % ���R�Ȑe�ȊO����̑J�� 
cs.set_param('SFUnconditionalTransitionShadowingDiag', 'warning');   % �J�ڂ̗D�揇�� 
cs.set_param('SFUndirectedBroadcastEventsDiag', 'warning');   % �w���̂Ȃ��C�x���g �u���[�h�L���X�g 
cs.set_param('SFUnexpectedBacktrackingDiag', 'warning');   % �\�����ʃo�b�N�g���b�L���O 
cs.set_param('SFUnusedDataAndEventsDiag', 'warning');   % ���g�p�̃f�[�^�ƃC�x���g 

% �n�[�h�E�F�A���s �y�C��
cs.set_param('ProdIntDivRoundTo', 'Undefined');   % �����t�������̏��Z�̊ۂ� 
cs.set_param('ProdLargestAtomicFloat', 'None');   % ���������_ 
cs.set_param('ProdLargestAtomicInteger', 'Char');   % ���� 

% ���f���Q�� �y�C��
cs.set_param('EnableParallelModelReferenceBuilds', 'off');   % ���񃂃f���̎Q�ƃr���h��L���� 
cs.set_param('ModelDependencies', '');   % ���f���̈ˑ��֌W 
cs.set_param('ModelReferenceNumInstancesAllowed', 'Multi');   % �ŏ�ʃ��f�����Ƃɉ\�ȃC���X�^���X�̑��� 
cs.set_param('ModelReferencePassRootInputsByReference', 'on');   % �R�[�h�����ŌŒ�T�C�Y�̃X�J���[�̃��[�g���͂�l�n���ōs�� 
cs.set_param('ParallelModelReferenceMATLABWorkerInit', 'None');   % �r���h�ɑ΂��� MATLAB ���[�J�[������ 
cs.set_param('PropagateSignalLabelsOutOfModel', 'off');   % �Q�ƃ��f���̊O�̂��ׂĂ̐M���̃��x����`�d 
cs.set_param('PropagateVarSize', 'Infer from blocks in model');   % �σT�C�Y�̐M���̃T�C�Y��`�d 

% �V�~�����[�V���� �^�[�Q�b�g ��� �y�C��
cs.set_param('SFSimEcho', 'on');   % �Z�~�R�����Ȃ��̃G�R�[�\�� 
cs.set_param('SFSimEnableDebug', 'on');   % �f�o�b�O/�A�j���[�V������L���ɂ��� 
cs.set_param('SFSimOverflowDetection', 'on');   % �I�[�o�[�t���[���Ƀ��b�v�����o (�f�o�b�O����) 
cs.set_param('SimBuildMode', 'sf_incremental_build');   % �V�~�����[�V���� �^�[�Q�b�g�̃r���h ���[�h 
cs.set_param('SimCtrlC', 'on');   % ������ۏ� 
cs.set_param('SimGenImportedTypeDefs', 'off');   % �C���|�[�g�����o�X�Ɨ񋓌^�ɑ΂��� typedef �𐶐����� 
cs.set_param('SimIntegrity', 'on');   % �������̐�������ۏ� 

% �V�~�����[�V���� �^�[�Q�b�g:�J�X�^�� �R�[�h �y�C��
cs.set_param('SimCustomHeaderCode', '');   % �w�b�_�[ �t�@�C�� 
cs.set_param('SimCustomInitializer', '');   % �������֐� 
cs.set_param('SimCustomSourceCode', '');   % �\�[�X �t�@�C�� 
cs.set_param('SimCustomTerminator', '');   % �I���֐� 
cs.set_param('SimParseCustomCode', 'on');   % �J�X�^�� �R�[�h�̃V���{������� 
cs.set_param('SimUserIncludeDirs', '');   % �C���N���[�h �f�B���N�g�� 
cs.set_param('SimUserLibraries', '');   % ���C�u���� 
cs.set_param('SimUserSources', '');   % �\�[�X �t�@�C�� 

% �V�~�����[�V���� �^�[�Q�b�g:�V���{�� �y�C��
cs.set_param('SimReservedNameArray', '');   % �\�� 

% �R�[�h���� ��� �y�C��
cs.set_param('CheckMdlBeforeBuild', 'Off');   % �R�[�h�����O�Ƀ��f�����`�F�b�N 
cs.set_param('GenCodeOnly', 'on');   % �R�[�h�����̂� 
cs.set_param('IgnoreCustomStorageClasses', 'off');   % �J�X�^�� �X�g���[�W �N���X�𖳎����� 
cs.set_param('IgnoreTestpoints', 'off');   % �e�X�g �|�C���g�M���𖳎� 
cs.set_param('MakeCommand', 'make_rtw');   % make �R�}���h 
cs.set_param('ObjectivePriorities', '');   % �D�揇�ʂ��ݒ肳�ꂽ�ړI 
cs.set_param('PackageGeneratedCodeAndArtifacts', 'off');   % �R�[�h�ƃA�C�e���̃p�b�P�[�W�� 
cs.set_param('PackageName', '');   % Zip �t�@�C���� 
cs.set_param('TargetLang', 'C');   % ���� 
cs.set_param('TemplateMakefile', 'ert_default_tmf');   % �e���v���[�g makefile 

% �R�[�h����:�R�����g �y�C��
cs.set_param('MATLABFcnDesc', 'off');   % MATLAB �֐��̃w���v �e�L�X�g 
cs.set_param('MATLABSourceComments', 'off');   % �R�����g������ MATLAB �\�[�X �R�[�h 

% �R�[�h����:�V���{�� �y�C��
cs.set_param('CustomSymbolStrBlkIO', 'rtb_$N$M');   % ���[�J���ȃu���b�N�̏o�͕ϐ� 
cs.set_param('CustomSymbolStrFcn', '$R$N$M$F');   % �T�u�V�X�e���̃��\�b�h 
cs.set_param('CustomSymbolStrFcnArg', 'rt$I$N$M');   % �T�u�V�X�e���̃��\�b�h���� 
cs.set_param('CustomSymbolStrField', '$N$M');   % �O���[�o���ȃ^�C�v�̃t�B�[���h�� 
cs.set_param('CustomSymbolStrGlobalVar', '$R$N$M');   % �O���[�o���ϐ� 
cs.set_param('CustomSymbolStrMacro', '$R$N$M');   % �萔�̃}�N�� 
cs.set_param('CustomSymbolStrTmpVar', '$N$M');   % ���[�J���Ȉꎞ�ϐ� 
cs.set_param('CustomSymbolStrType', '$N$R$M_T');   % �O���[�o���ȃ^�C�v 
cs.set_param('CustomSymbolStrUtil', '$N$C');   % ���L���[�e�B���e�B 
cs.set_param('DefineNamingRule', 'None');   % #define ��`�� 
cs.set_param('InlinedPrmAccess', 'Literals');   % �X�J���[�̃C�����C�� �p�����[�^�[�̐��� 
cs.set_param('InternalIdentifier', 'Shortened');   % �V�X�e�������̎��ʎq 
cs.set_param('MangleLength', 1);   % �}���O���̍ŏ��̒��� 
cs.set_param('MaxIdLength', 31);   % ���ʎq�̍ő�̒��� 
cs.set_param('ReservedNameArray', '');   % �\�� 
cs.set_param('UseSimReservedNames', 'off');   % �V�~�����[�V���� �^�[�Q�b�g�Ɠ����\�񖼂��g�p 

% �R�[�h����:�J�X�^�� �R�[�h �y�C��
cs.set_param('CustomHeaderCode', '');   % �w�b�_�[ �t�@�C�� 
cs.set_param('CustomInclude', '');   % �C���N���[�h �f�B���N�g�� 
cs.set_param('CustomInitializer', '');   % �������֐� 
cs.set_param('CustomLibrary', '');   % ���C�u���� 
cs.set_param('CustomSource', '');   % �\�[�X �t�@�C�� 
cs.set_param('CustomSourceCode', '');   % �\�[�X �t�@�C�� 
cs.set_param('CustomTerminator', '');   % �I���֐� 
cs.set_param('RTWUseSimCustomCode', 'off');   % �V�~�����[�V���� �^�[�Q�b�g�Ɠ����J�X�^�� �R�[�h�̐ݒ���g�p 

% �R�[�h����:�f�o�b�O �y�C��
cs.set_param('ProfileTLC', 'off');   % TLC �v���t�@�C�� 
cs.set_param('RTWVerbose', 'on');   % �ڍׂȃr���h (�R�}���h�\��) 
cs.set_param('RetainRTWFile', 'off');   % .rtw �t�@�C�����c�� 
cs.set_param('TLCAssert', 'off');   % TLC �A�T�[�V������L���ɂ��� 
cs.set_param('TLCCoverage', 'off');   % �R�[�h�������� TLC �J�o���b�W�����s 
cs.set_param('TLCDebug', 'off');   % �R�[�h�������� TLC �f�o�b�K�[�����s 

% �R�[�h����:�C���^�[�t�F�C�X �y�C��
cs.set_param('CodeInterfacePackaging', 'Nonreusable function');   % �R�[�h �C���^�[�t�F�C�X�̃p�b�P�[�W�� 
cs.set_param('CodeReplacementLibrary', 'AUTOSAR 4.0');   % �R�[�h�u�����C�u���� 
cs.set_param('CombineSignalStateStructs', 'on');   % �M���Ə�Ԃ̍\���̓��� 
cs.set_param('GenerateASAP2', 'off');   % �C���^�[�t�F�C�X 
cs.set_param('GeneratePreprocessorConditionals', 'Use local settings');   % �v���v���Z�b�T�̏����𐶐� 
cs.set_param('SupportAbsoluteTime', 'on');   % ��Ύ��� 
cs.set_param('SupportComplex', 'off');   % ���f�� 
cs.set_param('SupportVariableSizeSignals', 'off');   % �σT�C�Y�̐M�� 
cs.set_param('TargetLangStandard', 'C89/C90 (ANSI)');   % �W���̐��w���C�u���� 
cs.set_param('UtilityFuncGeneration', 'Auto');   % ���L�R�[�h�̔z�u 

% �R�[�h����:���� �y�C��
cs.set_param('CodeExecutionProfileVariable', 'executionProfile');   % ���[�N�X�y�[�X�ϐ� 
cs.set_param('CodeExecutionProfiling', 'off');   % �^�X�N���s���Ԃ��v������ 
cs.set_param('CodeProfilingInstrumentation', 'off');   % �֐��̎��s���Ԃ��v������ 
cs.set_param('CodeProfilingSaveOptions', 'SummaryOnly');   % �ۑ��I�v�V���� 
cs.set_param('CreateSILPILBlock', 'None');   % �u���b�N�̍쐬 
cs.set_param('SILDebugging', 'off');   % SIL �V�~�����[�V�����Ń\�[�X���x�� �f�o�b�O��L���ɂ��� 

% �R�[�h����:�R�[�h �X�^�C�� �y�C��
cs.set_param('CastingMode', 'Nominal');   % �L���X�g ���[�h 
cs.set_param('ConvertIfToSwitch', 'off');   % if-elseif-else �̃p�^�[���� switch-case �X�e�[�g�����g�ɕϊ����� 
cs.set_param('IndentSize', '2');   % �C���f���g �T�C�Y 
cs.set_param('IndentStyle', 'K&R');   % �C���f���g �X�^�C�� 
cs.set_param('ParenthesesLevel', 'Nominal');   % �������̃��x�� 
cs.set_param('PreserveExpressionOrder', 'off');   % ���̉��Z�q�̏��Ԃ�ێ����� 
cs.set_param('PreserveExternInFcnDecls', 'on');   % �֐��̐錾�� extern �L�[���[�h��ێ����� 
cs.set_param('PreserveIfCondition', 'off');   % if �X�e�[�g�����g���̏�������ێ����� 
cs.set_param('SuppressUnreachableDefaultCases', 'off');   % ���B�s�\�ȏꍇ�AStateflow switch �X�e�[�g�����g��default �P�[�X�𐶐����Ȃ� 

% �R�[�h����:�e���v���[�g �y�C��
cs.set_param('ERTCustomFileTemplate', 'example_file_process.tlc');   % �t�@�C�� �J�X�^�}�C�Y �e���v���[�g 
cs.set_param('ERTDataHdrFileTemplate', 'ert_code_template.cgt');   % �w�b�_�[ �t�@�C�� �e���v���[�g 
cs.set_param('ERTDataSrcFileTemplate', 'ert_code_template.cgt');   % �\�[�X �t�@�C�� �e���v���[�g 
cs.set_param('ERTHdrFileBannerTemplate', 'ert_code_template.cgt');   % �w�b�_�[ �t�@�C�� �e���v���[�g 
cs.set_param('ERTSrcFileBannerTemplate', 'ert_code_template.cgt');   % �\�[�X �t�@�C�� �e���v���[�g 

% �R�[�h����:�R�[�h�z�u �y�C��
cs.set_param('ERTFilePackagingFormat', 'Compact');   % �t�@�C�� �p�b�P�[�W���`�� 
cs.set_param('EnableDataOwnership', 'off');   % �f�[�^��`�̔z�u�Ƀf�[�^ �I�u�W�F�N�g����I�[�i�[���g�p���� 
cs.set_param('IncludeFileDelimiter', 'Auto');   % #�t�@�C����؂蕶�����܂߂� 
cs.set_param('ParamTuneLevel', 10);   % �p�����[�^�[�������x�� 
cs.set_param('SignalDisplayLevel', 10);   % �M���̕\�����x�� 

% �R�[�h����:�f�[�^�^�u�� �y�C��
cs.set_param('ReplacementTypes', struct('double','','single','','int32','int32','int16','int16','int8','int8','uint32','uint32','uint16','uint16','uint8','uint8','boolean','ActionRequest','int','','uint','uint','char',''));   % �u���^�C�v 

% �R�[�h����:������ �Z�N�V���� �y�C��
cs.set_param('MemSecDataConstants', 'Default');   % �萔 
cs.set_param('MemSecDataIO', 'Default');   % ����/�o�� 
cs.set_param('MemSecDataInternal', 'Default');   % �����f�[�^ 
cs.set_param('MemSecDataParameters', 'Default');   % �p�����[�^�[ 
cs.set_param('MemSecFuncExecute', 'Default');   % ���s 
cs.set_param('MemSecFuncInitTerm', 'Default');   % ������/�I�� 
cs.set_param('MemSecFuncSharedUtil', 'Default');   % ���L���[�e�B���e�B 
cs.set_param('MemSecPackage', '--- None ---');   % �p�b�P�[�W 

% �R�[�h����:AUTOSAR Code Generation Options �y�C��
cs.set_param('AutosarCompilerAbstraction', 'off');   % Use AUTOSAR compiler abstraction macros 
cs.set_param('AutosarMatrixIOAsArray', 'off');   % Support root-level matrix I/O using one-dimensional arrays 
cs.set_param('AutosarMaxShortNameLength', 32);   % Maximum SHORT-NAME length 
cs.set_param('AutosarSchemaVersion', '4.0');   % Generate XML file for schema version 

