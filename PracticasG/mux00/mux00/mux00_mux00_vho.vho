
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.5.0.102
-- ldbanno -n VHDL -o mux00_mux00_vho.vho -w -neg -gui mux00_mux00.ncd 
-- Netlist created on Fri Oct 30 07:53:36 2015
-- Netlist written on Fri Oct 30 07:54:09 2015
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
      generic map (initval => X"FC0C")
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
      generic map (initval => X"CCF0")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity selmux2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity selmux2 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF selmux2 : ENTITY IS TRUE;

  end selmux2;

  architecture Structure of selmux2 is
  begin
    INST1: MUX21
      port map (D0=>D0, D1=>D1, SD=>SD, Z=>Z);
  end Structure;

-- entity salida_3_1_SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity salida_3_1_SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "salida_3_1_SLICE_0";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          M0: in Std_logic; OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF salida_3_1_SLICE_0 : ENTITY IS TRUE;

  end salida_3_1_SLICE_0;

  architecture Structure of salida_3_1_SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal salida_3_1_SLICE_0_salida_3_1_SLICE_0_K1_H1: Std_logic;
    signal salida_3_1_SLICE_0_salida_3_1_GATE_H0: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    salida_3_1_SLICE_0_K1: lut4
      port map (A=>GNDI, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, 
                Z=>salida_3_1_SLICE_0_salida_3_1_SLICE_0_K1_H1);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    salida_3_1_GATE: lut40001
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>salida_3_1_SLICE_0_salida_3_1_GATE_H0);
    salida_3_1_SLICE_0_K0K1MUX: selmux2
      port map (D0=>salida_3_1_SLICE_0_salida_3_1_GATE_H0, 
                D1=>salida_3_1_SLICE_0_salida_3_1_SLICE_0_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
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
      generic map (initval => X"F0AA")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
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
      generic map (initval => X"CFC0")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity salida_3_0_SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity salida_3_0_SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "salida_3_0_SLICE_1";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_M0_OFX0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          M0: in Std_logic; OFX0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF salida_3_0_SLICE_1 : ENTITY IS TRUE;

  end salida_3_0_SLICE_1;

  architecture Structure of salida_3_0_SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal OFX0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal salida_3_0_SLICE_1_salida_3_0_SLICE_1_K1_H1: Std_logic;
    signal salida_3_0_SLICE_1_salida_3_0_GATE_H0: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component selmux2
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    salida_3_0_SLICE_1_K1: lut40002
      port map (A=>A1_ipd, B=>GNDI, C=>C1_ipd, D=>D1_ipd, 
                Z=>salida_3_0_SLICE_1_salida_3_0_SLICE_1_K1_H1);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    salida_3_0_GATE: lut40003
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, 
                Z=>salida_3_0_SLICE_1_salida_3_0_GATE_H0);
    salida_3_0_SLICE_1_K0K1MUX: selmux2
      port map (D0=>salida_3_0_SLICE_1_salida_3_0_GATE_H0, 
                D1=>salida_3_0_SLICE_1_salida_3_0_SLICE_1_K1_H1, SD=>M0_ipd, 
                Z=>OFX0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      M0_ipd, OFX0_out)
    VARIABLE OFX0_zd         	: std_logic := 'X';
    VARIABLE OFX0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    OFX0_zd 	:= OFX0_out;

    VitalPathDelay01 (
      OutSignal => OFX0, OutSignalName => "OFX0", OutTemp => OFX0_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_OFX0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_OFX0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_OFX0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_OFX0,
                           PathCondition => TRUE),
                     4 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_OFX0,
                           PathCondition => TRUE),
                     5 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_OFX0,
                           PathCondition => TRUE),
                     6 => (InputChangeTime => M0_ipd'last_event,
                           PathDelay => tpd_M0_OFX0,
                           PathCondition => TRUE)),
      GlitchData => OFX0_GlitchData,
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

-- entity salida_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity salida_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "salida_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_salida0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; salida0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF salida_0_B : ENTITY IS TRUE;

  end salida_0_B;

  architecture Structure of salida_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal salida0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    salida_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>salida0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, salida0_out)
    VARIABLE salida0_zd         	: std_logic := 'X';
    VARIABLE salida0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    salida0_zd 	:= salida0_out;

    VitalPathDelay01 (
      OutSignal => salida0, OutSignalName => "salida0", OutTemp => salida0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_salida0,
                           PathCondition => TRUE)),
      GlitchData => salida0_GlitchData,
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

-- entity a_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity a_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "a_0_B";

      tipd_a0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_a0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_a0 	: VitalDelayType := 0 ns;
      tpw_a0_posedge	: VitalDelayType := 0 ns;
      tpw_a0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; a0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF a_0_B : ENTITY IS TRUE;

  end a_0_B;

  architecture Structure of a_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal a0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    a_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>a0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(a0_ipd, a0, tipd_a0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, a0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_a0_a0          	: x01 := '0';
    VARIABLE periodcheckinfo_a0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => a0_ipd,
        TestSignalName => "a0",
        Period => tperiod_a0,
        PulseWidthHigh => tpw_a0_posedge,
        PulseWidthLow => tpw_a0_negedge,
        PeriodData => periodcheckinfo_a0,
        Violation => tviol_a0_a0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => a0_ipd'last_event,
                           PathDelay => tpd_a0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity salida_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity salida_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "salida_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_salida1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; salida1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF salida_1_B : ENTITY IS TRUE;

  end salida_1_B;

  architecture Structure of salida_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal salida1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    salida_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>salida1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, salida1_out)
    VARIABLE salida1_zd         	: std_logic := 'X';
    VARIABLE salida1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    salida1_zd 	:= salida1_out;

    VitalPathDelay01 (
      OutSignal => salida1, OutSignalName => "salida1", OutTemp => salida1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_salida1,
                           PathCondition => TRUE)),
      GlitchData => salida1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sel_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sel_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sel_1_B";

      tipd_sel1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sel1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sel1 	: VitalDelayType := 0 ns;
      tpw_sel1_posedge	: VitalDelayType := 0 ns;
      tpw_sel1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sel1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sel_1_B : ENTITY IS TRUE;

  end sel_1_B;

  architecture Structure of sel_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sel1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    sel_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>sel1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sel1_ipd, sel1, tipd_sel1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sel1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sel1_sel1          	: x01 := '0';
    VARIABLE periodcheckinfo_sel1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sel1_ipd,
        TestSignalName => "sel1",
        Period => tperiod_sel1,
        PulseWidthHigh => tpw_sel1_posedge,
        PulseWidthLow => tpw_sel1_negedge,
        PeriodData => periodcheckinfo_sel1,
        Violation => tviol_sel1_sel1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sel1_ipd'last_event,
                           PathDelay => tpd_sel1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sel_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sel_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sel_0_B";

      tipd_sel0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sel0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sel0 	: VitalDelayType := 0 ns;
      tpw_sel0_posedge	: VitalDelayType := 0 ns;
      tpw_sel0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sel0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sel_0_B : ENTITY IS TRUE;

  end sel_0_B;

  architecture Structure of sel_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sel0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    sel_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>sel0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sel0_ipd, sel0, tipd_sel0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sel0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sel0_sel0          	: x01 := '0';
    VARIABLE periodcheckinfo_sel0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sel0_ipd,
        TestSignalName => "sel0",
        Period => tperiod_sel0,
        PulseWidthHigh => tpw_sel0_posedge,
        PulseWidthLow => tpw_sel0_negedge,
        PeriodData => periodcheckinfo_sel0,
        Violation => tviol_sel0_sel0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sel0_ipd'last_event,
                           PathDelay => tpd_sel0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity d_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity d_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "d_1_B";

      tipd_d1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_d1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_d1 	: VitalDelayType := 0 ns;
      tpw_d1_posedge	: VitalDelayType := 0 ns;
      tpw_d1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; d1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF d_1_B : ENTITY IS TRUE;

  end d_1_B;

  architecture Structure of d_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal d1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    d_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>d1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(d1_ipd, d1, tipd_d1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, d1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_d1_d1          	: x01 := '0';
    VARIABLE periodcheckinfo_d1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => d1_ipd,
        TestSignalName => "d1",
        Period => tperiod_d1,
        PulseWidthHigh => tpw_d1_posedge,
        PulseWidthLow => tpw_d1_negedge,
        PeriodData => periodcheckinfo_d1,
        Violation => tviol_d1_d1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => d1_ipd'last_event,
                           PathDelay => tpd_d1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity d_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity d_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "d_0_B";

      tipd_d0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_d0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_d0 	: VitalDelayType := 0 ns;
      tpw_d0_posedge	: VitalDelayType := 0 ns;
      tpw_d0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; d0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF d_0_B : ENTITY IS TRUE;

  end d_0_B;

  architecture Structure of d_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal d0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    d_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>d0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(d0_ipd, d0, tipd_d0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, d0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_d0_d0          	: x01 := '0';
    VARIABLE periodcheckinfo_d0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => d0_ipd,
        TestSignalName => "d0",
        Period => tperiod_d0,
        PulseWidthHigh => tpw_d0_posedge,
        PulseWidthLow => tpw_d0_negedge,
        PeriodData => periodcheckinfo_d0,
        Violation => tviol_d0_d0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => d0_ipd'last_event,
                           PathDelay => tpd_d0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity c_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity c_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "c_1_B";

      tipd_c1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_c1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_c1 	: VitalDelayType := 0 ns;
      tpw_c1_posedge	: VitalDelayType := 0 ns;
      tpw_c1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; c1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF c_1_B : ENTITY IS TRUE;

  end c_1_B;

  architecture Structure of c_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal c1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    c_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>c1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(c1_ipd, c1, tipd_c1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, c1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_c1_c1          	: x01 := '0';
    VARIABLE periodcheckinfo_c1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => c1_ipd,
        TestSignalName => "c1",
        Period => tperiod_c1,
        PulseWidthHigh => tpw_c1_posedge,
        PulseWidthLow => tpw_c1_negedge,
        PeriodData => periodcheckinfo_c1,
        Violation => tviol_c1_c1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => c1_ipd'last_event,
                           PathDelay => tpd_c1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity c_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity c_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "c_0_B";

      tipd_c0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_c0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_c0 	: VitalDelayType := 0 ns;
      tpw_c0_posedge	: VitalDelayType := 0 ns;
      tpw_c0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; c0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF c_0_B : ENTITY IS TRUE;

  end c_0_B;

  architecture Structure of c_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal c0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    c_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>c0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(c0_ipd, c0, tipd_c0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, c0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_c0_c0          	: x01 := '0';
    VARIABLE periodcheckinfo_c0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => c0_ipd,
        TestSignalName => "c0",
        Period => tperiod_c0,
        PulseWidthHigh => tpw_c0_posedge,
        PulseWidthLow => tpw_c0_negedge,
        PeriodData => periodcheckinfo_c0,
        Violation => tviol_c0_c0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => c0_ipd'last_event,
                           PathDelay => tpd_c0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity b_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity b_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "b_1_B";

      tipd_b1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_b1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_b1 	: VitalDelayType := 0 ns;
      tpw_b1_posedge	: VitalDelayType := 0 ns;
      tpw_b1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; b1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF b_1_B : ENTITY IS TRUE;

  end b_1_B;

  architecture Structure of b_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal b1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    b_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>b1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(b1_ipd, b1, tipd_b1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, b1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_b1_b1          	: x01 := '0';
    VARIABLE periodcheckinfo_b1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => b1_ipd,
        TestSignalName => "b1",
        Period => tperiod_b1,
        PulseWidthHigh => tpw_b1_posedge,
        PulseWidthLow => tpw_b1_negedge,
        PeriodData => periodcheckinfo_b1,
        Violation => tviol_b1_b1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => b1_ipd'last_event,
                           PathDelay => tpd_b1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity b_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity b_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "b_0_B";

      tipd_b0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_b0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_b0 	: VitalDelayType := 0 ns;
      tpw_b0_posedge	: VitalDelayType := 0 ns;
      tpw_b0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; b0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF b_0_B : ENTITY IS TRUE;

  end b_0_B;

  architecture Structure of b_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal b0_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    b_pad_0: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>b0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(b0_ipd, b0, tipd_b0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, b0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_b0_b0          	: x01 := '0';
    VARIABLE periodcheckinfo_b0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => b0_ipd,
        TestSignalName => "b0",
        Period => tperiod_b0,
        PulseWidthHigh => tpw_b0_posedge,
        PulseWidthLow => tpw_b0_negedge,
        PeriodData => periodcheckinfo_b0,
        Violation => tviol_b0_b0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => b0_ipd'last_event,
                           PathDelay => tpd_b0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity a_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity a_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "a_1_B";

      tipd_a1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_a1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_a1 	: VitalDelayType := 0 ns;
      tpw_a1_posedge	: VitalDelayType := 0 ns;
      tpw_a1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; a1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF a_1_B : ENTITY IS TRUE;

  end a_1_B;

  architecture Structure of a_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal a1_ipd 	: std_logic := 'X';

    component xo2iobuf0004
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    a_pad_1: xo2iobuf0004
      port map (Z=>PADDI_out, PAD=>a1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(a1_ipd, a1, tipd_a1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, a1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_a1_a1          	: x01 := '0';
    VARIABLE periodcheckinfo_a1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => a1_ipd,
        TestSignalName => "a1",
        Period => tperiod_a1,
        PulseWidthHigh => tpw_a1_posedge,
        PulseWidthLow => tpw_a1_negedge,
        PeriodData => periodcheckinfo_a1,
        Violation => tviol_a1_a1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => a1_ipd'last_event,
                           PathDelay => tpd_a1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity mux01
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity mux01 is
    port (a: in Std_logic_vector (1 downto 0); 
          b: in Std_logic_vector (1 downto 0); 
          c: in Std_logic_vector (1 downto 0); 
          d: in Std_logic_vector (1 downto 0); 
          sel: in Std_logic_vector (1 downto 0); 
          salida: out Std_logic_vector (1 downto 0));



  end mux01;

  architecture Structure of mux01 is
    signal d_c_1: Std_logic;
    signal sel_c_1: Std_logic;
    signal b_c_1: Std_logic;
    signal a_c_1: Std_logic;
    signal c_c_1: Std_logic;
    signal sel_c_0: Std_logic;
    signal salida_c_1: Std_logic;
    signal d_c_0: Std_logic;
    signal b_c_0: Std_logic;
    signal a_c_0: Std_logic;
    signal c_c_0: Std_logic;
    signal salida_c_0: Std_logic;
    signal VCCI: Std_logic;
    component salida_3_1_SLICE_0
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            M0: in Std_logic; OFX0: out Std_logic);
    end component;
    component salida_3_0_SLICE_1
      port (D1: in Std_logic; C1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            M0: in Std_logic; OFX0: out Std_logic);
    end component;
    component salida_0_B
      port (PADDO: in Std_logic; salida0: out Std_logic);
    end component;
    component a_0_B
      port (PADDI: out Std_logic; a0: in Std_logic);
    end component;
    component salida_1_B
      port (PADDO: in Std_logic; salida1: out Std_logic);
    end component;
    component sel_1_B
      port (PADDI: out Std_logic; sel1: in Std_logic);
    end component;
    component sel_0_B
      port (PADDI: out Std_logic; sel0: in Std_logic);
    end component;
    component d_1_B
      port (PADDI: out Std_logic; d1: in Std_logic);
    end component;
    component d_0_B
      port (PADDI: out Std_logic; d0: in Std_logic);
    end component;
    component c_1_B
      port (PADDI: out Std_logic; c1: in Std_logic);
    end component;
    component c_0_B
      port (PADDI: out Std_logic; c0: in Std_logic);
    end component;
    component b_1_B
      port (PADDI: out Std_logic; b1: in Std_logic);
    end component;
    component b_0_B
      port (PADDI: out Std_logic; b0: in Std_logic);
    end component;
    component a_1_B
      port (PADDI: out Std_logic; a1: in Std_logic);
    end component;
  begin
    salida_3_1_SLICE_0I: salida_3_1_SLICE_0
      port map (D1=>d_c_1, C1=>sel_c_1, B1=>b_c_1, D0=>sel_c_1, C0=>a_c_1, 
                B0=>c_c_1, M0=>sel_c_0, OFX0=>salida_c_1);
    salida_3_0_SLICE_1I: salida_3_0_SLICE_1
      port map (D1=>sel_c_1, C1=>d_c_0, A1=>b_c_0, D0=>a_c_0, C0=>sel_c_1, 
                B0=>c_c_0, M0=>sel_c_0, OFX0=>salida_c_0);
    salida_0_I: salida_0_B
      port map (PADDO=>salida_c_0, salida0=>salida(0));
    a_0_I: a_0_B
      port map (PADDI=>a_c_0, a0=>a(0));
    salida_1_I: salida_1_B
      port map (PADDO=>salida_c_1, salida1=>salida(1));
    sel_1_I: sel_1_B
      port map (PADDI=>sel_c_1, sel1=>sel(1));
    sel_0_I: sel_0_B
      port map (PADDI=>sel_c_0, sel0=>sel(0));
    d_1_I: d_1_B
      port map (PADDI=>d_c_1, d1=>d(1));
    d_0_I: d_0_B
      port map (PADDI=>d_c_0, d0=>d(0));
    c_1_I: c_1_B
      port map (PADDI=>c_c_1, c1=>c(1));
    c_0_I: c_0_B
      port map (PADDI=>c_c_0, c0=>c(0));
    b_1_I: b_1_B
      port map (PADDI=>b_c_1, b1=>b(1));
    b_0_I: b_0_B
      port map (PADDI=>b_c_0, b0=>b(0));
    a_1_I: a_1_B
      port map (PADDI=>a_c_1, a1=>a(1));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of mux01 is
    for Structure
    end for;
  end Structure_CON;


