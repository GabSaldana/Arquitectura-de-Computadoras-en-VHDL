
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.2.0.134
-- ldbanno -n VHDL -o and01_and01_vho.vho -w -neg -gui and01_and01.ncd 
-- Netlist created on Fri Jan 30 17:46:05 2015
-- Netlist written on Fri Jan 30 17:46:18 2015
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
      generic map (initval => X"C0C0")
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
    Ya_7: lut4
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
      generic map (initval => X"8888")
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

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
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
    Ya_0: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

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

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
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
    Ya_1: lut4
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
      generic map (initval => X"F000")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; C0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_3 : ENTITY IS TRUE;

  end SLICE_3;

  architecture Structure of SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
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
    Ya_2: lut40002
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
      generic map (initval => X"8888")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_4 : ENTITY IS TRUE;

  end SLICE_4;

  architecture Structure of SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
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
    Ya_3: lut40003
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
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
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Ya_4: lut4
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

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_6 : ENTITY IS TRUE;

  end SLICE_6;

  architecture Structure of SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
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
    Ya_5: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
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
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; C0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_7 : ENTITY IS TRUE;

  end SLICE_7;

  architecture Structure of SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
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
    Ya_6: lut40002
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

-- entity Ya_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ya_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ya_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Ya0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Ya0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Ya_0_B : ENTITY IS TRUE;

  end Ya_0_B;

  architecture Structure of Ya_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Ya0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Ya_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Ya0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Ya0_out)
    VARIABLE Ya0_zd         	: std_logic := 'X';
    VARIABLE Ya0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Ya0_zd 	:= Ya0_out;

    VitalPathDelay01 (
      OutSignal => Ya0, OutSignalName => "Ya0", OutTemp => Ya0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Ya0,
                           PathCondition => TRUE)),
      GlitchData => Ya0_GlitchData,
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

-- entity Aa_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Aa_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Aa_0_B";

      tipd_Aa0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Aa0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Aa0 	: VitalDelayType := 0 ns;
      tpw_Aa0_posedge	: VitalDelayType := 0 ns;
      tpw_Aa0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Aa0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Aa_0_B : ENTITY IS TRUE;

  end Aa_0_B;

  architecture Structure of Aa_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Aa0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Aa_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Aa0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Aa0_ipd, Aa0, tipd_Aa0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Aa0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Aa0_Aa0          	: x01 := '0';
    VARIABLE periodcheckinfo_Aa0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Aa0_ipd,
        TestSignalName => "Aa0",
        Period => tperiod_Aa0,
        PulseWidthHigh => tpw_Aa0_posedge,
        PulseWidthLow => tpw_Aa0_negedge,
        PeriodData => periodcheckinfo_Aa0,
        Violation => tviol_Aa0_Aa0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Aa0_ipd'last_event,
                           PathDelay => tpd_Aa0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ya_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ya_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ya_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Ya7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Ya7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Ya_7_B : ENTITY IS TRUE;

  end Ya_7_B;

  architecture Structure of Ya_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Ya7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Ya_pad_7: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Ya7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Ya7_out)
    VARIABLE Ya7_zd         	: std_logic := 'X';
    VARIABLE Ya7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Ya7_zd 	:= Ya7_out;

    VitalPathDelay01 (
      OutSignal => Ya7, OutSignalName => "Ya7", OutTemp => Ya7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Ya7,
                           PathCondition => TRUE)),
      GlitchData => Ya7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ya_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ya_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ya_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Ya6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Ya6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Ya_6_B : ENTITY IS TRUE;

  end Ya_6_B;

  architecture Structure of Ya_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Ya6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Ya_pad_6: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Ya6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Ya6_out)
    VARIABLE Ya6_zd         	: std_logic := 'X';
    VARIABLE Ya6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Ya6_zd 	:= Ya6_out;

    VitalPathDelay01 (
      OutSignal => Ya6, OutSignalName => "Ya6", OutTemp => Ya6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Ya6,
                           PathCondition => TRUE)),
      GlitchData => Ya6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ya_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ya_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ya_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Ya5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Ya5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Ya_5_B : ENTITY IS TRUE;

  end Ya_5_B;

  architecture Structure of Ya_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Ya5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Ya_pad_5: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Ya5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Ya5_out)
    VARIABLE Ya5_zd         	: std_logic := 'X';
    VARIABLE Ya5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Ya5_zd 	:= Ya5_out;

    VitalPathDelay01 (
      OutSignal => Ya5, OutSignalName => "Ya5", OutTemp => Ya5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Ya5,
                           PathCondition => TRUE)),
      GlitchData => Ya5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ya_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ya_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ya_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Ya4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Ya4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Ya_4_B : ENTITY IS TRUE;

  end Ya_4_B;

  architecture Structure of Ya_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Ya4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Ya_pad_4: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Ya4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Ya4_out)
    VARIABLE Ya4_zd         	: std_logic := 'X';
    VARIABLE Ya4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Ya4_zd 	:= Ya4_out;

    VitalPathDelay01 (
      OutSignal => Ya4, OutSignalName => "Ya4", OutTemp => Ya4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Ya4,
                           PathCondition => TRUE)),
      GlitchData => Ya4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ya_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ya_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ya_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Ya3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Ya3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Ya_3_B : ENTITY IS TRUE;

  end Ya_3_B;

  architecture Structure of Ya_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Ya3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Ya_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Ya3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Ya3_out)
    VARIABLE Ya3_zd         	: std_logic := 'X';
    VARIABLE Ya3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Ya3_zd 	:= Ya3_out;

    VitalPathDelay01 (
      OutSignal => Ya3, OutSignalName => "Ya3", OutTemp => Ya3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Ya3,
                           PathCondition => TRUE)),
      GlitchData => Ya3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ya_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ya_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ya_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Ya2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Ya2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Ya_2_B : ENTITY IS TRUE;

  end Ya_2_B;

  architecture Structure of Ya_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Ya2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Ya_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Ya2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Ya2_out)
    VARIABLE Ya2_zd         	: std_logic := 'X';
    VARIABLE Ya2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Ya2_zd 	:= Ya2_out;

    VitalPathDelay01 (
      OutSignal => Ya2, OutSignalName => "Ya2", OutTemp => Ya2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Ya2,
                           PathCondition => TRUE)),
      GlitchData => Ya2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ya_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ya_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ya_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Ya1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Ya1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Ya_1_B : ENTITY IS TRUE;

  end Ya_1_B;

  architecture Structure of Ya_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Ya1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Ya_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Ya1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Ya1_out)
    VARIABLE Ya1_zd         	: std_logic := 'X';
    VARIABLE Ya1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Ya1_zd 	:= Ya1_out;

    VitalPathDelay01 (
      OutSignal => Ya1, OutSignalName => "Ya1", OutTemp => Ya1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Ya1,
                           PathCondition => TRUE)),
      GlitchData => Ya1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ba_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ba_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ba_7_B";

      tipd_Ba7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ba7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ba7 	: VitalDelayType := 0 ns;
      tpw_Ba7_posedge	: VitalDelayType := 0 ns;
      tpw_Ba7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ba7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ba_7_B : ENTITY IS TRUE;

  end Ba_7_B;

  architecture Structure of Ba_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ba7_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ba_pad_7: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ba7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ba7_ipd, Ba7, tipd_Ba7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ba7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ba7_Ba7          	: x01 := '0';
    VARIABLE periodcheckinfo_Ba7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ba7_ipd,
        TestSignalName => "Ba7",
        Period => tperiod_Ba7,
        PulseWidthHigh => tpw_Ba7_posedge,
        PulseWidthLow => tpw_Ba7_negedge,
        PeriodData => periodcheckinfo_Ba7,
        Violation => tviol_Ba7_Ba7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ba7_ipd'last_event,
                           PathDelay => tpd_Ba7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ba_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ba_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ba_6_B";

      tipd_Ba6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ba6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ba6 	: VitalDelayType := 0 ns;
      tpw_Ba6_posedge	: VitalDelayType := 0 ns;
      tpw_Ba6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ba6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ba_6_B : ENTITY IS TRUE;

  end Ba_6_B;

  architecture Structure of Ba_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ba6_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ba_pad_6: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ba6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ba6_ipd, Ba6, tipd_Ba6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ba6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ba6_Ba6          	: x01 := '0';
    VARIABLE periodcheckinfo_Ba6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ba6_ipd,
        TestSignalName => "Ba6",
        Period => tperiod_Ba6,
        PulseWidthHigh => tpw_Ba6_posedge,
        PulseWidthLow => tpw_Ba6_negedge,
        PeriodData => periodcheckinfo_Ba6,
        Violation => tviol_Ba6_Ba6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ba6_ipd'last_event,
                           PathDelay => tpd_Ba6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ba_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ba_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ba_5_B";

      tipd_Ba5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ba5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ba5 	: VitalDelayType := 0 ns;
      tpw_Ba5_posedge	: VitalDelayType := 0 ns;
      tpw_Ba5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ba5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ba_5_B : ENTITY IS TRUE;

  end Ba_5_B;

  architecture Structure of Ba_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ba5_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ba_pad_5: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ba5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ba5_ipd, Ba5, tipd_Ba5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ba5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ba5_Ba5          	: x01 := '0';
    VARIABLE periodcheckinfo_Ba5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ba5_ipd,
        TestSignalName => "Ba5",
        Period => tperiod_Ba5,
        PulseWidthHigh => tpw_Ba5_posedge,
        PulseWidthLow => tpw_Ba5_negedge,
        PeriodData => periodcheckinfo_Ba5,
        Violation => tviol_Ba5_Ba5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ba5_ipd'last_event,
                           PathDelay => tpd_Ba5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ba_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ba_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ba_4_B";

      tipd_Ba4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ba4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ba4 	: VitalDelayType := 0 ns;
      tpw_Ba4_posedge	: VitalDelayType := 0 ns;
      tpw_Ba4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ba4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ba_4_B : ENTITY IS TRUE;

  end Ba_4_B;

  architecture Structure of Ba_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ba4_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ba_pad_4: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ba4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ba4_ipd, Ba4, tipd_Ba4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ba4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ba4_Ba4          	: x01 := '0';
    VARIABLE periodcheckinfo_Ba4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ba4_ipd,
        TestSignalName => "Ba4",
        Period => tperiod_Ba4,
        PulseWidthHigh => tpw_Ba4_posedge,
        PulseWidthLow => tpw_Ba4_negedge,
        PeriodData => periodcheckinfo_Ba4,
        Violation => tviol_Ba4_Ba4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ba4_ipd'last_event,
                           PathDelay => tpd_Ba4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ba_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ba_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ba_3_B";

      tipd_Ba3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ba3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ba3 	: VitalDelayType := 0 ns;
      tpw_Ba3_posedge	: VitalDelayType := 0 ns;
      tpw_Ba3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ba3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ba_3_B : ENTITY IS TRUE;

  end Ba_3_B;

  architecture Structure of Ba_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ba3_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ba_pad_3: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ba3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ba3_ipd, Ba3, tipd_Ba3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ba3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ba3_Ba3          	: x01 := '0';
    VARIABLE periodcheckinfo_Ba3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ba3_ipd,
        TestSignalName => "Ba3",
        Period => tperiod_Ba3,
        PulseWidthHigh => tpw_Ba3_posedge,
        PulseWidthLow => tpw_Ba3_negedge,
        PeriodData => periodcheckinfo_Ba3,
        Violation => tviol_Ba3_Ba3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ba3_ipd'last_event,
                           PathDelay => tpd_Ba3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ba_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ba_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ba_2_B";

      tipd_Ba2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ba2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ba2 	: VitalDelayType := 0 ns;
      tpw_Ba2_posedge	: VitalDelayType := 0 ns;
      tpw_Ba2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ba2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ba_2_B : ENTITY IS TRUE;

  end Ba_2_B;

  architecture Structure of Ba_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ba2_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ba_pad_2: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ba2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ba2_ipd, Ba2, tipd_Ba2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ba2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ba2_Ba2          	: x01 := '0';
    VARIABLE periodcheckinfo_Ba2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ba2_ipd,
        TestSignalName => "Ba2",
        Period => tperiod_Ba2,
        PulseWidthHigh => tpw_Ba2_posedge,
        PulseWidthLow => tpw_Ba2_negedge,
        PeriodData => periodcheckinfo_Ba2,
        Violation => tviol_Ba2_Ba2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ba2_ipd'last_event,
                           PathDelay => tpd_Ba2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ba_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ba_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ba_1_B";

      tipd_Ba1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ba1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ba1 	: VitalDelayType := 0 ns;
      tpw_Ba1_posedge	: VitalDelayType := 0 ns;
      tpw_Ba1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ba1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ba_1_B : ENTITY IS TRUE;

  end Ba_1_B;

  architecture Structure of Ba_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ba1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ba_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ba1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ba1_ipd, Ba1, tipd_Ba1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ba1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ba1_Ba1          	: x01 := '0';
    VARIABLE periodcheckinfo_Ba1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ba1_ipd,
        TestSignalName => "Ba1",
        Period => tperiod_Ba1,
        PulseWidthHigh => tpw_Ba1_posedge,
        PulseWidthLow => tpw_Ba1_negedge,
        PeriodData => periodcheckinfo_Ba1,
        Violation => tviol_Ba1_Ba1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ba1_ipd'last_event,
                           PathDelay => tpd_Ba1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ba_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ba_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ba_0_B";

      tipd_Ba0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ba0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ba0 	: VitalDelayType := 0 ns;
      tpw_Ba0_posedge	: VitalDelayType := 0 ns;
      tpw_Ba0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ba0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ba_0_B : ENTITY IS TRUE;

  end Ba_0_B;

  architecture Structure of Ba_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ba0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ba_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Ba0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ba0_ipd, Ba0, tipd_Ba0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ba0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ba0_Ba0          	: x01 := '0';
    VARIABLE periodcheckinfo_Ba0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ba0_ipd,
        TestSignalName => "Ba0",
        Period => tperiod_Ba0,
        PulseWidthHigh => tpw_Ba0_posedge,
        PulseWidthLow => tpw_Ba0_negedge,
        PeriodData => periodcheckinfo_Ba0,
        Violation => tviol_Ba0_Ba0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ba0_ipd'last_event,
                           PathDelay => tpd_Ba0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Aa_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Aa_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Aa_7_B";

      tipd_Aa7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Aa7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Aa7 	: VitalDelayType := 0 ns;
      tpw_Aa7_posedge	: VitalDelayType := 0 ns;
      tpw_Aa7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Aa7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Aa_7_B : ENTITY IS TRUE;

  end Aa_7_B;

  architecture Structure of Aa_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Aa7_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Aa_pad_7: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Aa7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Aa7_ipd, Aa7, tipd_Aa7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Aa7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Aa7_Aa7          	: x01 := '0';
    VARIABLE periodcheckinfo_Aa7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Aa7_ipd,
        TestSignalName => "Aa7",
        Period => tperiod_Aa7,
        PulseWidthHigh => tpw_Aa7_posedge,
        PulseWidthLow => tpw_Aa7_negedge,
        PeriodData => periodcheckinfo_Aa7,
        Violation => tviol_Aa7_Aa7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Aa7_ipd'last_event,
                           PathDelay => tpd_Aa7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Aa_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Aa_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Aa_6_B";

      tipd_Aa6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Aa6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Aa6 	: VitalDelayType := 0 ns;
      tpw_Aa6_posedge	: VitalDelayType := 0 ns;
      tpw_Aa6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Aa6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Aa_6_B : ENTITY IS TRUE;

  end Aa_6_B;

  architecture Structure of Aa_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Aa6_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Aa_pad_6: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Aa6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Aa6_ipd, Aa6, tipd_Aa6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Aa6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Aa6_Aa6          	: x01 := '0';
    VARIABLE periodcheckinfo_Aa6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Aa6_ipd,
        TestSignalName => "Aa6",
        Period => tperiod_Aa6,
        PulseWidthHigh => tpw_Aa6_posedge,
        PulseWidthLow => tpw_Aa6_negedge,
        PeriodData => periodcheckinfo_Aa6,
        Violation => tviol_Aa6_Aa6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Aa6_ipd'last_event,
                           PathDelay => tpd_Aa6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Aa_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Aa_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Aa_5_B";

      tipd_Aa5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Aa5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Aa5 	: VitalDelayType := 0 ns;
      tpw_Aa5_posedge	: VitalDelayType := 0 ns;
      tpw_Aa5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Aa5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Aa_5_B : ENTITY IS TRUE;

  end Aa_5_B;

  architecture Structure of Aa_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Aa5_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Aa_pad_5: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Aa5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Aa5_ipd, Aa5, tipd_Aa5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Aa5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Aa5_Aa5          	: x01 := '0';
    VARIABLE periodcheckinfo_Aa5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Aa5_ipd,
        TestSignalName => "Aa5",
        Period => tperiod_Aa5,
        PulseWidthHigh => tpw_Aa5_posedge,
        PulseWidthLow => tpw_Aa5_negedge,
        PeriodData => periodcheckinfo_Aa5,
        Violation => tviol_Aa5_Aa5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Aa5_ipd'last_event,
                           PathDelay => tpd_Aa5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Aa_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Aa_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Aa_4_B";

      tipd_Aa4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Aa4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Aa4 	: VitalDelayType := 0 ns;
      tpw_Aa4_posedge	: VitalDelayType := 0 ns;
      tpw_Aa4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Aa4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Aa_4_B : ENTITY IS TRUE;

  end Aa_4_B;

  architecture Structure of Aa_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Aa4_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Aa_pad_4: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Aa4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Aa4_ipd, Aa4, tipd_Aa4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Aa4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Aa4_Aa4          	: x01 := '0';
    VARIABLE periodcheckinfo_Aa4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Aa4_ipd,
        TestSignalName => "Aa4",
        Period => tperiod_Aa4,
        PulseWidthHigh => tpw_Aa4_posedge,
        PulseWidthLow => tpw_Aa4_negedge,
        PeriodData => periodcheckinfo_Aa4,
        Violation => tviol_Aa4_Aa4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Aa4_ipd'last_event,
                           PathDelay => tpd_Aa4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Aa_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Aa_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Aa_3_B";

      tipd_Aa3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Aa3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Aa3 	: VitalDelayType := 0 ns;
      tpw_Aa3_posedge	: VitalDelayType := 0 ns;
      tpw_Aa3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Aa3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Aa_3_B : ENTITY IS TRUE;

  end Aa_3_B;

  architecture Structure of Aa_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Aa3_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Aa_pad_3: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Aa3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Aa3_ipd, Aa3, tipd_Aa3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Aa3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Aa3_Aa3          	: x01 := '0';
    VARIABLE periodcheckinfo_Aa3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Aa3_ipd,
        TestSignalName => "Aa3",
        Period => tperiod_Aa3,
        PulseWidthHigh => tpw_Aa3_posedge,
        PulseWidthLow => tpw_Aa3_negedge,
        PeriodData => periodcheckinfo_Aa3,
        Violation => tviol_Aa3_Aa3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Aa3_ipd'last_event,
                           PathDelay => tpd_Aa3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Aa_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Aa_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Aa_2_B";

      tipd_Aa2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Aa2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Aa2 	: VitalDelayType := 0 ns;
      tpw_Aa2_posedge	: VitalDelayType := 0 ns;
      tpw_Aa2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Aa2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Aa_2_B : ENTITY IS TRUE;

  end Aa_2_B;

  architecture Structure of Aa_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Aa2_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Aa_pad_2: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Aa2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Aa2_ipd, Aa2, tipd_Aa2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Aa2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Aa2_Aa2          	: x01 := '0';
    VARIABLE periodcheckinfo_Aa2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Aa2_ipd,
        TestSignalName => "Aa2",
        Period => tperiod_Aa2,
        PulseWidthHigh => tpw_Aa2_posedge,
        PulseWidthLow => tpw_Aa2_negedge,
        PeriodData => periodcheckinfo_Aa2,
        Violation => tviol_Aa2_Aa2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Aa2_ipd'last_event,
                           PathDelay => tpd_Aa2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Aa_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Aa_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Aa_1_B";

      tipd_Aa1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Aa1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Aa1 	: VitalDelayType := 0 ns;
      tpw_Aa1_posedge	: VitalDelayType := 0 ns;
      tpw_Aa1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Aa1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Aa_1_B : ENTITY IS TRUE;

  end Aa_1_B;

  architecture Structure of Aa_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Aa1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Aa_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>Aa1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Aa1_ipd, Aa1, tipd_Aa1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Aa1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Aa1_Aa1          	: x01 := '0';
    VARIABLE periodcheckinfo_Aa1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Aa1_ipd,
        TestSignalName => "Aa1",
        Period => tperiod_Aa1,
        PulseWidthHigh => tpw_Aa1_posedge,
        PulseWidthLow => tpw_Aa1_negedge,
        PeriodData => periodcheckinfo_Aa1,
        Violation => tviol_Aa1_Aa1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Aa1_ipd'last_event,
                           PathDelay => tpd_Aa1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity and01
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity and01 is
    port (Aa: in Std_logic_vector (7 downto 0); 
          Ba: in Std_logic_vector (7 downto 0); 
          Ya: out Std_logic_vector (7 downto 0));



  end and01;

  architecture Structure of and01 is
    signal Ba_c_7: Std_logic;
    signal Aa_c_7: Std_logic;
    signal Ya_c_7: Std_logic;
    signal Ba_c_0: Std_logic;
    signal Aa_c_0: Std_logic;
    signal Ya_c_0: Std_logic;
    signal Ba_c_1: Std_logic;
    signal Aa_c_1: Std_logic;
    signal Ya_c_1: Std_logic;
    signal Aa_c_2: Std_logic;
    signal Ba_c_2: Std_logic;
    signal Ya_c_2: Std_logic;
    signal Aa_c_3: Std_logic;
    signal Ba_c_3: Std_logic;
    signal Ya_c_3: Std_logic;
    signal Ba_c_4: Std_logic;
    signal Aa_c_4: Std_logic;
    signal Ya_c_4: Std_logic;
    signal Ba_c_5: Std_logic;
    signal Aa_c_5: Std_logic;
    signal Ya_c_5: Std_logic;
    signal Aa_c_6: Std_logic;
    signal Ba_c_6: Std_logic;
    signal Ya_c_6: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_1
      port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_2
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_3
      port (D0: in Std_logic; C0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_4
      port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_5
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_6
      port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_7
      port (D0: in Std_logic; C0: in Std_logic; F0: out Std_logic);
    end component;
    component Ya_0_B
      port (PADDO: in Std_logic; Ya0: out Std_logic);
    end component;
    component Aa_0_B
      port (PADDI: out Std_logic; Aa0: in Std_logic);
    end component;
    component Ya_7_B
      port (PADDO: in Std_logic; Ya7: out Std_logic);
    end component;
    component Ya_6_B
      port (PADDO: in Std_logic; Ya6: out Std_logic);
    end component;
    component Ya_5_B
      port (PADDO: in Std_logic; Ya5: out Std_logic);
    end component;
    component Ya_4_B
      port (PADDO: in Std_logic; Ya4: out Std_logic);
    end component;
    component Ya_3_B
      port (PADDO: in Std_logic; Ya3: out Std_logic);
    end component;
    component Ya_2_B
      port (PADDO: in Std_logic; Ya2: out Std_logic);
    end component;
    component Ya_1_B
      port (PADDO: in Std_logic; Ya1: out Std_logic);
    end component;
    component Ba_7_B
      port (PADDI: out Std_logic; Ba7: in Std_logic);
    end component;
    component Ba_6_B
      port (PADDI: out Std_logic; Ba6: in Std_logic);
    end component;
    component Ba_5_B
      port (PADDI: out Std_logic; Ba5: in Std_logic);
    end component;
    component Ba_4_B
      port (PADDI: out Std_logic; Ba4: in Std_logic);
    end component;
    component Ba_3_B
      port (PADDI: out Std_logic; Ba3: in Std_logic);
    end component;
    component Ba_2_B
      port (PADDI: out Std_logic; Ba2: in Std_logic);
    end component;
    component Ba_1_B
      port (PADDI: out Std_logic; Ba1: in Std_logic);
    end component;
    component Ba_0_B
      port (PADDI: out Std_logic; Ba0: in Std_logic);
    end component;
    component Aa_7_B
      port (PADDI: out Std_logic; Aa7: in Std_logic);
    end component;
    component Aa_6_B
      port (PADDI: out Std_logic; Aa6: in Std_logic);
    end component;
    component Aa_5_B
      port (PADDI: out Std_logic; Aa5: in Std_logic);
    end component;
    component Aa_4_B
      port (PADDI: out Std_logic; Aa4: in Std_logic);
    end component;
    component Aa_3_B
      port (PADDI: out Std_logic; Aa3: in Std_logic);
    end component;
    component Aa_2_B
      port (PADDI: out Std_logic; Aa2: in Std_logic);
    end component;
    component Aa_1_B
      port (PADDI: out Std_logic; Aa1: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (C0=>Ba_c_7, B0=>Aa_c_7, F0=>Ya_c_7);
    SLICE_1I: SLICE_1
      port map (B0=>Ba_c_0, A0=>Aa_c_0, F0=>Ya_c_0);
    SLICE_2I: SLICE_2
      port map (C0=>Ba_c_1, B0=>Aa_c_1, F0=>Ya_c_1);
    SLICE_3I: SLICE_3
      port map (D0=>Aa_c_2, C0=>Ba_c_2, F0=>Ya_c_2);
    SLICE_4I: SLICE_4
      port map (B0=>Aa_c_3, A0=>Ba_c_3, F0=>Ya_c_3);
    SLICE_5I: SLICE_5
      port map (C0=>Ba_c_4, B0=>Aa_c_4, F0=>Ya_c_4);
    SLICE_6I: SLICE_6
      port map (B0=>Ba_c_5, A0=>Aa_c_5, F0=>Ya_c_5);
    SLICE_7I: SLICE_7
      port map (D0=>Aa_c_6, C0=>Ba_c_6, F0=>Ya_c_6);
    Ya_0_I: Ya_0_B
      port map (PADDO=>Ya_c_0, Ya0=>Ya(0));
    Aa_0_I: Aa_0_B
      port map (PADDI=>Aa_c_0, Aa0=>Aa(0));
    Ya_7_I: Ya_7_B
      port map (PADDO=>Ya_c_7, Ya7=>Ya(7));
    Ya_6_I: Ya_6_B
      port map (PADDO=>Ya_c_6, Ya6=>Ya(6));
    Ya_5_I: Ya_5_B
      port map (PADDO=>Ya_c_5, Ya5=>Ya(5));
    Ya_4_I: Ya_4_B
      port map (PADDO=>Ya_c_4, Ya4=>Ya(4));
    Ya_3_I: Ya_3_B
      port map (PADDO=>Ya_c_3, Ya3=>Ya(3));
    Ya_2_I: Ya_2_B
      port map (PADDO=>Ya_c_2, Ya2=>Ya(2));
    Ya_1_I: Ya_1_B
      port map (PADDO=>Ya_c_1, Ya1=>Ya(1));
    Ba_7_I: Ba_7_B
      port map (PADDI=>Ba_c_7, Ba7=>Ba(7));
    Ba_6_I: Ba_6_B
      port map (PADDI=>Ba_c_6, Ba6=>Ba(6));
    Ba_5_I: Ba_5_B
      port map (PADDI=>Ba_c_5, Ba5=>Ba(5));
    Ba_4_I: Ba_4_B
      port map (PADDI=>Ba_c_4, Ba4=>Ba(4));
    Ba_3_I: Ba_3_B
      port map (PADDI=>Ba_c_3, Ba3=>Ba(3));
    Ba_2_I: Ba_2_B
      port map (PADDI=>Ba_c_2, Ba2=>Ba(2));
    Ba_1_I: Ba_1_B
      port map (PADDI=>Ba_c_1, Ba1=>Ba(1));
    Ba_0_I: Ba_0_B
      port map (PADDI=>Ba_c_0, Ba0=>Ba(0));
    Aa_7_I: Aa_7_B
      port map (PADDI=>Aa_c_7, Aa7=>Aa(7));
    Aa_6_I: Aa_6_B
      port map (PADDI=>Aa_c_6, Aa6=>Aa(6));
    Aa_5_I: Aa_5_B
      port map (PADDI=>Aa_c_5, Aa5=>Aa(5));
    Aa_4_I: Aa_4_B
      port map (PADDI=>Aa_c_4, Aa4=>Aa(4));
    Aa_3_I: Aa_3_B
      port map (PADDI=>Aa_c_3, Aa3=>Aa(3));
    Aa_2_I: Aa_2_B
      port map (PADDI=>Aa_c_2, Aa2=>Aa(2));
    Aa_1_I: Aa_1_B
      port map (PADDI=>Aa_c_1, Aa1=>Aa(1));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of and01 is
    for Structure
    end for;
  end Structure_CON;


