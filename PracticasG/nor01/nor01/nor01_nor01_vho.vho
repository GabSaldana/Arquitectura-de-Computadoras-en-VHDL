
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.2.0.134
-- ldbanno -n VHDL -o nor01_nor01_vho.vho -w -neg -gui nor01_nor01.ncd 
-- Netlist created on Fri Jan 30 14:46:14 2015
-- Netlist written on Fri Jan 30 14:46:26 2015
-- Design is for device LCMXO2-7000HE
-- Design is for package TQFP144
-- Design is for performance grade 4

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0303")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Yno_pad_RNO_0: lut4
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0303")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_1";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yno_pad_RNO_7: lut40001
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40002 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40002 : ENTITY IS TRUE;

  end lut40002;

  architecture Structure of lut40002 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0055")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_2";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yno_pad_RNO_6: lut40002
      port map (A=>A0_ipd, B=>GNDI, C=>GNDI, D=>D0_ipd, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_3";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_3 : ENTITY IS TRUE;

  end SLICE_3;

  architecture Structure of SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yno_pad_RNO_5: lut40002
      port map (A=>A0_ipd, B=>GNDI, C=>GNDI, D=>D0_ipd, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_4";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_4 : ENTITY IS TRUE;

  end SLICE_4;

  architecture Structure of SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yno_pad_RNO_4: lut40001
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_5";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_5 : ENTITY IS TRUE;

  end SLICE_5;

  architecture Structure of SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yno_pad_RNO_3: lut40001
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40003 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40003 : ENTITY IS TRUE;

  end lut40003;

  architecture Structure of lut40003 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"000F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_6";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; C0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_6 : ENTITY IS TRUE;

  end SLICE_6;

  architecture Structure of SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yno_pad_RNO_2: lut40003
      port map (A=>GNDI, B=>GNDI, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, C0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_7";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_7 : ENTITY IS TRUE;

  end SLICE_7;

  architecture Structure of SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yno_pad_RNO_1: lut40002
      port map (A=>A0_ipd, B=>GNDI, C=>GNDI, D=>D0_ipd, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity Yno_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yno_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yno_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yno0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yno0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yno_0_B : ENTITY IS TRUE;

  end Yno_0_B;

  architecture Structure of Yno_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yno0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yno_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yno0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yno0_out)
    VARIABLE Yno0_zd         	: std_logic := 'X';
    VARIABLE Yno0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yno0_zd 	:= Yno0_out;

    VitalPathDelay01 (
      OutSignal => Yno0, OutSignalName => "Yno0", OutTemp => Yno0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yno0,
                           PathCondition => TRUE)),
      GlitchData => Yno0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0004 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0004 : ENTITY IS TRUE;

  end xo2iobuf0004;

  architecture Structure of xo2iobuf0004 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity Ano_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ano_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ano_0_B";

      tipd_Ano0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ano0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ano0 	: VitalDelayType := 0 ns;
      tpw_Ano0_posedge	: VitalDelayType := 0 ns;
      tpw_Ano0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ano0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ano_0_B : ENTITY IS TRUE;

  end Ano_0_B;

  architecture Structure of Ano_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ano0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ano_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ano0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ano0_ipd, Ano0, tipd_Ano0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ano0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ano0_Ano0          	: x01 := '0';
    VARIABLE periodcheckinfo_Ano0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ano0_ipd,
        TestSignalName => "Ano0",
        Period => tperiod_Ano0,
        PulseWidthHigh => tpw_Ano0_posedge,
        PulseWidthLow => tpw_Ano0_negedge,
        PeriodData => periodcheckinfo_Ano0,
        Violation => tviol_Ano0_Ano0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ano0_ipd'last_event,
                           PathDelay => tpd_Ano0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yno_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yno_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yno_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yno7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yno7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yno_7_B : ENTITY IS TRUE;

  end Yno_7_B;

  architecture Structure of Yno_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yno7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yno_pad_7: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yno7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yno7_out)
    VARIABLE Yno7_zd         	: std_logic := 'X';
    VARIABLE Yno7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yno7_zd 	:= Yno7_out;

    VitalPathDelay01 (
      OutSignal => Yno7, OutSignalName => "Yno7", OutTemp => Yno7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yno7,
                           PathCondition => TRUE)),
      GlitchData => Yno7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yno_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yno_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yno_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yno6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yno6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yno_6_B : ENTITY IS TRUE;

  end Yno_6_B;

  architecture Structure of Yno_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yno6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yno_pad_6: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yno6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yno6_out)
    VARIABLE Yno6_zd         	: std_logic := 'X';
    VARIABLE Yno6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yno6_zd 	:= Yno6_out;

    VitalPathDelay01 (
      OutSignal => Yno6, OutSignalName => "Yno6", OutTemp => Yno6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yno6,
                           PathCondition => TRUE)),
      GlitchData => Yno6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yno_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yno_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yno_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yno5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yno5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yno_5_B : ENTITY IS TRUE;

  end Yno_5_B;

  architecture Structure of Yno_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yno5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yno_pad_5: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yno5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yno5_out)
    VARIABLE Yno5_zd         	: std_logic := 'X';
    VARIABLE Yno5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yno5_zd 	:= Yno5_out;

    VitalPathDelay01 (
      OutSignal => Yno5, OutSignalName => "Yno5", OutTemp => Yno5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yno5,
                           PathCondition => TRUE)),
      GlitchData => Yno5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yno_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yno_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yno_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yno4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yno4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yno_4_B : ENTITY IS TRUE;

  end Yno_4_B;

  architecture Structure of Yno_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yno4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yno_pad_4: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yno4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yno4_out)
    VARIABLE Yno4_zd         	: std_logic := 'X';
    VARIABLE Yno4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yno4_zd 	:= Yno4_out;

    VitalPathDelay01 (
      OutSignal => Yno4, OutSignalName => "Yno4", OutTemp => Yno4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yno4,
                           PathCondition => TRUE)),
      GlitchData => Yno4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yno_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yno_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yno_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yno3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yno3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yno_3_B : ENTITY IS TRUE;

  end Yno_3_B;

  architecture Structure of Yno_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yno3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yno_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yno3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yno3_out)
    VARIABLE Yno3_zd         	: std_logic := 'X';
    VARIABLE Yno3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yno3_zd 	:= Yno3_out;

    VitalPathDelay01 (
      OutSignal => Yno3, OutSignalName => "Yno3", OutTemp => Yno3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yno3,
                           PathCondition => TRUE)),
      GlitchData => Yno3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yno_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yno_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yno_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yno2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yno2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yno_2_B : ENTITY IS TRUE;

  end Yno_2_B;

  architecture Structure of Yno_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yno2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yno_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yno2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yno2_out)
    VARIABLE Yno2_zd         	: std_logic := 'X';
    VARIABLE Yno2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yno2_zd 	:= Yno2_out;

    VitalPathDelay01 (
      OutSignal => Yno2, OutSignalName => "Yno2", OutTemp => Yno2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yno2,
                           PathCondition => TRUE)),
      GlitchData => Yno2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yno_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yno_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yno_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yno1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yno1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yno_1_B : ENTITY IS TRUE;

  end Yno_1_B;

  architecture Structure of Yno_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yno1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yno_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yno1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yno1_out)
    VARIABLE Yno1_zd         	: std_logic := 'X';
    VARIABLE Yno1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yno1_zd 	:= Yno1_out;

    VitalPathDelay01 (
      OutSignal => Yno1, OutSignalName => "Yno1", OutTemp => Yno1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yno1,
                           PathCondition => TRUE)),
      GlitchData => Yno1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bno_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bno_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bno_7_B";

      tipd_Bno7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bno7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bno7 	: VitalDelayType := 0 ns;
      tpw_Bno7_posedge	: VitalDelayType := 0 ns;
      tpw_Bno7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bno7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bno_7_B : ENTITY IS TRUE;

  end Bno_7_B;

  architecture Structure of Bno_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bno7_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bno_pad_7: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Bno7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bno7_ipd, Bno7, tipd_Bno7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bno7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bno7_Bno7          	: x01 := '0';
    VARIABLE periodcheckinfo_Bno7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bno7_ipd,
        TestSignalName => "Bno7",
        Period => tperiod_Bno7,
        PulseWidthHigh => tpw_Bno7_posedge,
        PulseWidthLow => tpw_Bno7_negedge,
        PeriodData => periodcheckinfo_Bno7,
        Violation => tviol_Bno7_Bno7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bno7_ipd'last_event,
                           PathDelay => tpd_Bno7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bno_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bno_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bno_6_B";

      tipd_Bno6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bno6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bno6 	: VitalDelayType := 0 ns;
      tpw_Bno6_posedge	: VitalDelayType := 0 ns;
      tpw_Bno6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bno6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bno_6_B : ENTITY IS TRUE;

  end Bno_6_B;

  architecture Structure of Bno_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bno6_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bno_pad_6: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Bno6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bno6_ipd, Bno6, tipd_Bno6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bno6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bno6_Bno6          	: x01 := '0';
    VARIABLE periodcheckinfo_Bno6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bno6_ipd,
        TestSignalName => "Bno6",
        Period => tperiod_Bno6,
        PulseWidthHigh => tpw_Bno6_posedge,
        PulseWidthLow => tpw_Bno6_negedge,
        PeriodData => periodcheckinfo_Bno6,
        Violation => tviol_Bno6_Bno6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bno6_ipd'last_event,
                           PathDelay => tpd_Bno6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bno_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bno_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bno_5_B";

      tipd_Bno5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bno5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bno5 	: VitalDelayType := 0 ns;
      tpw_Bno5_posedge	: VitalDelayType := 0 ns;
      tpw_Bno5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bno5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bno_5_B : ENTITY IS TRUE;

  end Bno_5_B;

  architecture Structure of Bno_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bno5_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bno_pad_5: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Bno5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bno5_ipd, Bno5, tipd_Bno5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bno5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bno5_Bno5          	: x01 := '0';
    VARIABLE periodcheckinfo_Bno5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bno5_ipd,
        TestSignalName => "Bno5",
        Period => tperiod_Bno5,
        PulseWidthHigh => tpw_Bno5_posedge,
        PulseWidthLow => tpw_Bno5_negedge,
        PeriodData => periodcheckinfo_Bno5,
        Violation => tviol_Bno5_Bno5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bno5_ipd'last_event,
                           PathDelay => tpd_Bno5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bno_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bno_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bno_4_B";

      tipd_Bno4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bno4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bno4 	: VitalDelayType := 0 ns;
      tpw_Bno4_posedge	: VitalDelayType := 0 ns;
      tpw_Bno4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bno4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bno_4_B : ENTITY IS TRUE;

  end Bno_4_B;

  architecture Structure of Bno_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bno4_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bno_pad_4: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Bno4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bno4_ipd, Bno4, tipd_Bno4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bno4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bno4_Bno4          	: x01 := '0';
    VARIABLE periodcheckinfo_Bno4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bno4_ipd,
        TestSignalName => "Bno4",
        Period => tperiod_Bno4,
        PulseWidthHigh => tpw_Bno4_posedge,
        PulseWidthLow => tpw_Bno4_negedge,
        PeriodData => periodcheckinfo_Bno4,
        Violation => tviol_Bno4_Bno4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bno4_ipd'last_event,
                           PathDelay => tpd_Bno4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bno_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bno_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bno_3_B";

      tipd_Bno3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bno3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bno3 	: VitalDelayType := 0 ns;
      tpw_Bno3_posedge	: VitalDelayType := 0 ns;
      tpw_Bno3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bno3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bno_3_B : ENTITY IS TRUE;

  end Bno_3_B;

  architecture Structure of Bno_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bno3_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bno_pad_3: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Bno3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bno3_ipd, Bno3, tipd_Bno3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bno3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bno3_Bno3          	: x01 := '0';
    VARIABLE periodcheckinfo_Bno3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bno3_ipd,
        TestSignalName => "Bno3",
        Period => tperiod_Bno3,
        PulseWidthHigh => tpw_Bno3_posedge,
        PulseWidthLow => tpw_Bno3_negedge,
        PeriodData => periodcheckinfo_Bno3,
        Violation => tviol_Bno3_Bno3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bno3_ipd'last_event,
                           PathDelay => tpd_Bno3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bno_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bno_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bno_2_B";

      tipd_Bno2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bno2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bno2 	: VitalDelayType := 0 ns;
      tpw_Bno2_posedge	: VitalDelayType := 0 ns;
      tpw_Bno2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bno2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bno_2_B : ENTITY IS TRUE;

  end Bno_2_B;

  architecture Structure of Bno_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bno2_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bno_pad_2: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Bno2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bno2_ipd, Bno2, tipd_Bno2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bno2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bno2_Bno2          	: x01 := '0';
    VARIABLE periodcheckinfo_Bno2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bno2_ipd,
        TestSignalName => "Bno2",
        Period => tperiod_Bno2,
        PulseWidthHigh => tpw_Bno2_posedge,
        PulseWidthLow => tpw_Bno2_negedge,
        PeriodData => periodcheckinfo_Bno2,
        Violation => tviol_Bno2_Bno2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bno2_ipd'last_event,
                           PathDelay => tpd_Bno2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bno_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bno_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bno_1_B";

      tipd_Bno1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bno1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bno1 	: VitalDelayType := 0 ns;
      tpw_Bno1_posedge	: VitalDelayType := 0 ns;
      tpw_Bno1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bno1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bno_1_B : ENTITY IS TRUE;

  end Bno_1_B;

  architecture Structure of Bno_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bno1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bno_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Bno1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bno1_ipd, Bno1, tipd_Bno1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bno1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bno1_Bno1          	: x01 := '0';
    VARIABLE periodcheckinfo_Bno1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bno1_ipd,
        TestSignalName => "Bno1",
        Period => tperiod_Bno1,
        PulseWidthHigh => tpw_Bno1_posedge,
        PulseWidthLow => tpw_Bno1_negedge,
        PeriodData => periodcheckinfo_Bno1,
        Violation => tviol_Bno1_Bno1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bno1_ipd'last_event,
                           PathDelay => tpd_Bno1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bno_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bno_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bno_0_B";

      tipd_Bno0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bno0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bno0 	: VitalDelayType := 0 ns;
      tpw_Bno0_posedge	: VitalDelayType := 0 ns;
      tpw_Bno0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bno0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bno_0_B : ENTITY IS TRUE;

  end Bno_0_B;

  architecture Structure of Bno_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bno0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bno_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Bno0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bno0_ipd, Bno0, tipd_Bno0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bno0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bno0_Bno0          	: x01 := '0';
    VARIABLE periodcheckinfo_Bno0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bno0_ipd,
        TestSignalName => "Bno0",
        Period => tperiod_Bno0,
        PulseWidthHigh => tpw_Bno0_posedge,
        PulseWidthLow => tpw_Bno0_negedge,
        PeriodData => periodcheckinfo_Bno0,
        Violation => tviol_Bno0_Bno0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bno0_ipd'last_event,
                           PathDelay => tpd_Bno0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ano_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ano_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ano_7_B";

      tipd_Ano7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ano7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ano7 	: VitalDelayType := 0 ns;
      tpw_Ano7_posedge	: VitalDelayType := 0 ns;
      tpw_Ano7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ano7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ano_7_B : ENTITY IS TRUE;

  end Ano_7_B;

  architecture Structure of Ano_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ano7_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ano_pad_7: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ano7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ano7_ipd, Ano7, tipd_Ano7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ano7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ano7_Ano7          	: x01 := '0';
    VARIABLE periodcheckinfo_Ano7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ano7_ipd,
        TestSignalName => "Ano7",
        Period => tperiod_Ano7,
        PulseWidthHigh => tpw_Ano7_posedge,
        PulseWidthLow => tpw_Ano7_negedge,
        PeriodData => periodcheckinfo_Ano7,
        Violation => tviol_Ano7_Ano7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ano7_ipd'last_event,
                           PathDelay => tpd_Ano7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ano_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ano_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ano_6_B";

      tipd_Ano6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ano6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ano6 	: VitalDelayType := 0 ns;
      tpw_Ano6_posedge	: VitalDelayType := 0 ns;
      tpw_Ano6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ano6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ano_6_B : ENTITY IS TRUE;

  end Ano_6_B;

  architecture Structure of Ano_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ano6_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ano_pad_6: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ano6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ano6_ipd, Ano6, tipd_Ano6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ano6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ano6_Ano6          	: x01 := '0';
    VARIABLE periodcheckinfo_Ano6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ano6_ipd,
        TestSignalName => "Ano6",
        Period => tperiod_Ano6,
        PulseWidthHigh => tpw_Ano6_posedge,
        PulseWidthLow => tpw_Ano6_negedge,
        PeriodData => periodcheckinfo_Ano6,
        Violation => tviol_Ano6_Ano6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ano6_ipd'last_event,
                           PathDelay => tpd_Ano6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ano_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ano_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ano_5_B";

      tipd_Ano5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ano5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ano5 	: VitalDelayType := 0 ns;
      tpw_Ano5_posedge	: VitalDelayType := 0 ns;
      tpw_Ano5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ano5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ano_5_B : ENTITY IS TRUE;

  end Ano_5_B;

  architecture Structure of Ano_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ano5_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ano_pad_5: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ano5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ano5_ipd, Ano5, tipd_Ano5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ano5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ano5_Ano5          	: x01 := '0';
    VARIABLE periodcheckinfo_Ano5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ano5_ipd,
        TestSignalName => "Ano5",
        Period => tperiod_Ano5,
        PulseWidthHigh => tpw_Ano5_posedge,
        PulseWidthLow => tpw_Ano5_negedge,
        PeriodData => periodcheckinfo_Ano5,
        Violation => tviol_Ano5_Ano5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ano5_ipd'last_event,
                           PathDelay => tpd_Ano5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ano_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ano_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ano_4_B";

      tipd_Ano4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ano4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ano4 	: VitalDelayType := 0 ns;
      tpw_Ano4_posedge	: VitalDelayType := 0 ns;
      tpw_Ano4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ano4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ano_4_B : ENTITY IS TRUE;

  end Ano_4_B;

  architecture Structure of Ano_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ano4_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ano_pad_4: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ano4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ano4_ipd, Ano4, tipd_Ano4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ano4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ano4_Ano4          	: x01 := '0';
    VARIABLE periodcheckinfo_Ano4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ano4_ipd,
        TestSignalName => "Ano4",
        Period => tperiod_Ano4,
        PulseWidthHigh => tpw_Ano4_posedge,
        PulseWidthLow => tpw_Ano4_negedge,
        PeriodData => periodcheckinfo_Ano4,
        Violation => tviol_Ano4_Ano4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ano4_ipd'last_event,
                           PathDelay => tpd_Ano4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ano_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ano_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ano_3_B";

      tipd_Ano3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ano3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ano3 	: VitalDelayType := 0 ns;
      tpw_Ano3_posedge	: VitalDelayType := 0 ns;
      tpw_Ano3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ano3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ano_3_B : ENTITY IS TRUE;

  end Ano_3_B;

  architecture Structure of Ano_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ano3_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ano_pad_3: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ano3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ano3_ipd, Ano3, tipd_Ano3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ano3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ano3_Ano3          	: x01 := '0';
    VARIABLE periodcheckinfo_Ano3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ano3_ipd,
        TestSignalName => "Ano3",
        Period => tperiod_Ano3,
        PulseWidthHigh => tpw_Ano3_posedge,
        PulseWidthLow => tpw_Ano3_negedge,
        PeriodData => periodcheckinfo_Ano3,
        Violation => tviol_Ano3_Ano3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ano3_ipd'last_event,
                           PathDelay => tpd_Ano3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ano_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ano_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ano_2_B";

      tipd_Ano2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ano2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ano2 	: VitalDelayType := 0 ns;
      tpw_Ano2_posedge	: VitalDelayType := 0 ns;
      tpw_Ano2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ano2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ano_2_B : ENTITY IS TRUE;

  end Ano_2_B;

  architecture Structure of Ano_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ano2_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ano_pad_2: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ano2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ano2_ipd, Ano2, tipd_Ano2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ano2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ano2_Ano2          	: x01 := '0';
    VARIABLE periodcheckinfo_Ano2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ano2_ipd,
        TestSignalName => "Ano2",
        Period => tperiod_Ano2,
        PulseWidthHigh => tpw_Ano2_posedge,
        PulseWidthLow => tpw_Ano2_negedge,
        PeriodData => periodcheckinfo_Ano2,
        Violation => tviol_Ano2_Ano2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ano2_ipd'last_event,
                           PathDelay => tpd_Ano2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ano_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ano_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ano_1_B";

      tipd_Ano1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ano1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ano1 	: VitalDelayType := 0 ns;
      tpw_Ano1_posedge	: VitalDelayType := 0 ns;
      tpw_Ano1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ano1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ano_1_B : ENTITY IS TRUE;

  end Ano_1_B;

  architecture Structure of Ano_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ano1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ano_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ano1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ano1_ipd, Ano1, tipd_Ano1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ano1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ano1_Ano1          	: x01 := '0';
    VARIABLE periodcheckinfo_Ano1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ano1_ipd,
        TestSignalName => "Ano1",
        Period => tperiod_Ano1,
        PulseWidthHigh => tpw_Ano1_posedge,
        PulseWidthLow => tpw_Ano1_negedge,
        PeriodData => periodcheckinfo_Ano1,
        Violation => tviol_Ano1_Ano1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ano1_ipd'last_event,
                           PathDelay => tpd_Ano1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity nor01
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity nor01 is
    port (Ano: in Std_logic_vector (7 downto 0); 
          Bno: in Std_logic_vector (7 downto 0); 
          Yno: out Std_logic_vector (7 downto 0));



  end nor01;

  architecture Structure of nor01 is
    signal Ano_c_0: Std_logic;
    signal Bno_c_0: Std_logic;
    signal Yno_c_0: Std_logic;
    signal Bno_c_7: Std_logic;
    signal Ano_c_7: Std_logic;
    signal Yno_c_7: Std_logic;
    signal Ano_c_6: Std_logic;
    signal Bno_c_6: Std_logic;
    signal Yno_c_6: Std_logic;
    signal Ano_c_5: Std_logic;
    signal Bno_c_5: Std_logic;
    signal Yno_c_5: Std_logic;
    signal Bno_c_4: Std_logic;
    signal Ano_c_4: Std_logic;
    signal Yno_c_4: Std_logic;
    signal Bno_c_3: Std_logic;
    signal Ano_c_3: Std_logic;
    signal Yno_c_3: Std_logic;
    signal Ano_c_2: Std_logic;
    signal Bno_c_2: Std_logic;
    signal Yno_c_2: Std_logic;
    signal Ano_c_1: Std_logic;
    signal Bno_c_1: Std_logic;
    signal Yno_c_1: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_1
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_2
      port (D0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_3
      port (D0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_4
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_5
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_6
      port (D0: in Std_logic; C0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_7
      port (D0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component Yno_0_B
      port (PADDO: in Std_logic; Yno0: out Std_logic);
    end component;
    component Ano_0_B
      port (PADDI: out Std_logic; Ano0: in Std_logic);
    end component;
    component Yno_7_B
      port (PADDO: in Std_logic; Yno7: out Std_logic);
    end component;
    component Yno_6_B
      port (PADDO: in Std_logic; Yno6: out Std_logic);
    end component;
    component Yno_5_B
      port (PADDO: in Std_logic; Yno5: out Std_logic);
    end component;
    component Yno_4_B
      port (PADDO: in Std_logic; Yno4: out Std_logic);
    end component;
    component Yno_3_B
      port (PADDO: in Std_logic; Yno3: out Std_logic);
    end component;
    component Yno_2_B
      port (PADDO: in Std_logic; Yno2: out Std_logic);
    end component;
    component Yno_1_B
      port (PADDO: in Std_logic; Yno1: out Std_logic);
    end component;
    component Bno_7_B
      port (PADDI: out Std_logic; Bno7: in Std_logic);
    end component;
    component Bno_6_B
      port (PADDI: out Std_logic; Bno6: in Std_logic);
    end component;
    component Bno_5_B
      port (PADDI: out Std_logic; Bno5: in Std_logic);
    end component;
    component Bno_4_B
      port (PADDI: out Std_logic; Bno4: in Std_logic);
    end component;
    component Bno_3_B
      port (PADDI: out Std_logic; Bno3: in Std_logic);
    end component;
    component Bno_2_B
      port (PADDI: out Std_logic; Bno2: in Std_logic);
    end component;
    component Bno_1_B
      port (PADDI: out Std_logic; Bno1: in Std_logic);
    end component;
    component Bno_0_B
      port (PADDI: out Std_logic; Bno0: in Std_logic);
    end component;
    component Ano_7_B
      port (PADDI: out Std_logic; Ano7: in Std_logic);
    end component;
    component Ano_6_B
      port (PADDI: out Std_logic; Ano6: in Std_logic);
    end component;
    component Ano_5_B
      port (PADDI: out Std_logic; Ano5: in Std_logic);
    end component;
    component Ano_4_B
      port (PADDI: out Std_logic; Ano4: in Std_logic);
    end component;
    component Ano_3_B
      port (PADDI: out Std_logic; Ano3: in Std_logic);
    end component;
    component Ano_2_B
      port (PADDI: out Std_logic; Ano2: in Std_logic);
    end component;
    component Ano_1_B
      port (PADDI: out Std_logic; Ano1: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (C0=>Ano_c_0, B0=>Bno_c_0, F0=>Yno_c_0);
    SLICE_1I: SLICE_1
      port map (C0=>Bno_c_7, B0=>Ano_c_7, F0=>Yno_c_7);
    SLICE_2I: SLICE_2
      port map (D0=>Ano_c_6, A0=>Bno_c_6, F0=>Yno_c_6);
    SLICE_3I: SLICE_3
      port map (D0=>Ano_c_5, A0=>Bno_c_5, F0=>Yno_c_5);
    SLICE_4I: SLICE_4
      port map (C0=>Bno_c_4, B0=>Ano_c_4, F0=>Yno_c_4);
    SLICE_5I: SLICE_5
      port map (C0=>Bno_c_3, B0=>Ano_c_3, F0=>Yno_c_3);
    SLICE_6I: SLICE_6
      port map (D0=>Ano_c_2, C0=>Bno_c_2, F0=>Yno_c_2);
    SLICE_7I: SLICE_7
      port map (D0=>Ano_c_1, A0=>Bno_c_1, F0=>Yno_c_1);
    Yno_0_I: Yno_0_B
      port map (PADDO=>Yno_c_0, Yno0=>Yno(0));
    Ano_0_I: Ano_0_B
      port map (PADDI=>Ano_c_0, Ano0=>Ano(0));
    Yno_7_I: Yno_7_B
      port map (PADDO=>Yno_c_7, Yno7=>Yno(7));
    Yno_6_I: Yno_6_B
      port map (PADDO=>Yno_c_6, Yno6=>Yno(6));
    Yno_5_I: Yno_5_B
      port map (PADDO=>Yno_c_5, Yno5=>Yno(5));
    Yno_4_I: Yno_4_B
      port map (PADDO=>Yno_c_4, Yno4=>Yno(4));
    Yno_3_I: Yno_3_B
      port map (PADDO=>Yno_c_3, Yno3=>Yno(3));
    Yno_2_I: Yno_2_B
      port map (PADDO=>Yno_c_2, Yno2=>Yno(2));
    Yno_1_I: Yno_1_B
      port map (PADDO=>Yno_c_1, Yno1=>Yno(1));
    Bno_7_I: Bno_7_B
      port map (PADDI=>Bno_c_7, Bno7=>Bno(7));
    Bno_6_I: Bno_6_B
      port map (PADDI=>Bno_c_6, Bno6=>Bno(6));
    Bno_5_I: Bno_5_B
      port map (PADDI=>Bno_c_5, Bno5=>Bno(5));
    Bno_4_I: Bno_4_B
      port map (PADDI=>Bno_c_4, Bno4=>Bno(4));
    Bno_3_I: Bno_3_B
      port map (PADDI=>Bno_c_3, Bno3=>Bno(3));
    Bno_2_I: Bno_2_B
      port map (PADDI=>Bno_c_2, Bno2=>Bno(2));
    Bno_1_I: Bno_1_B
      port map (PADDI=>Bno_c_1, Bno1=>Bno(1));
    Bno_0_I: Bno_0_B
      port map (PADDI=>Bno_c_0, Bno0=>Bno(0));
    Ano_7_I: Ano_7_B
      port map (PADDI=>Ano_c_7, Ano7=>Ano(7));
    Ano_6_I: Ano_6_B
      port map (PADDI=>Ano_c_6, Ano6=>Ano(6));
    Ano_5_I: Ano_5_B
      port map (PADDI=>Ano_c_5, Ano5=>Ano(5));
    Ano_4_I: Ano_4_B
      port map (PADDI=>Ano_c_4, Ano4=>Ano(4));
    Ano_3_I: Ano_3_B
      port map (PADDI=>Ano_c_3, Ano3=>Ano(3));
    Ano_2_I: Ano_2_B
      port map (PADDI=>Ano_c_2, Ano2=>Ano(2));
    Ano_1_I: Ano_1_B
      port map (PADDI=>Ano_c_1, Ano1=>Ano(1));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of nor01 is
    for Structure
    end for;
  end Structure_CON;


