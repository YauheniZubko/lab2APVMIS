library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity counter is
port (
   notG:in std_logic;
   RnotC:in std_logic;
   RCK:in std_logic;
   notCCLR:in std_logic;
   UnotD: in std_logic;
   notLOAD:in std_logic;
   notENP:in std_logic;
   notENT:in std_logic;
   CCK:in std_logic;
   A:in std_logic;
   B:in std_logic;
   C:in std_logic;
   D:in std_logic;
   Qa:out std_logic;
   Qb:out std_logic;
   Qc:out std_logic;
   Qd:out std_logic;
   notRco:out std_logic 
);
end counter;
architecture counter_rtl of counter is
signal cclken:std_logic:='0';
 signal x11: std_logic:='0';
 signal x12: std_logic:='0';
 signal x13: std_logic:='0';
 signal x14: std_logic:='0';
 signal x15: std_logic:='0';
 signal x16: std_logic:='0';
 signal x17: std_logic:='0';
 signal x21: std_logic:='0';
 signal x22: std_logic:='0';
 signal x23: std_logic:='0';
 signal x24: std_logic:='0';
 signal x25: std_logic:='0';
 signal x26: std_logic:='0';
 signal x27: std_logic:='0';
 signal x28: std_logic:='0';
 signal x31: std_logic:='0';
 signal x32: std_logic:='0';
 signal x33: std_logic:='0';
 signal x34: std_logic:='0';
 signal x35: std_logic:='0';
 signal x36: std_logic:='0';
 signal x37: std_logic:='0';
 signal x38: std_logic:='0';
 signal x41: std_logic:='0';
 signal x42: std_logic:='0';
 signal x43: std_logic:='0';
 signal x44: std_logic:='0';
 signal x45: std_logic:='0';
 signal x46: std_logic:='0';
 signal x47: std_logic:='0';
 signal x48: std_logic:='0';
 signal x51: std_logic:='0';
 signal x52: std_logic:='0';
 signal x53: std_logic:='0';
 signal x54: std_logic:='0';
 signal al: std_logic:='0';
 signal bl: std_logic:='0';
 signal cl: std_logic:='0';
 signal dl: std_logic:='0';
 signal qa1: std_logic:='0';
 signal qa2: std_logic:='0';
 signal qb1: std_logic:='0';
 signal qb2: std_logic:='0';
 signal qc1: std_logic:='0';
 signal qc2: std_logic:='0';
 signal qd1: std_logic:='0';
 signal qd2: std_logic:='0';
 signal ENPENTLOAD: std_logic:='0';
 signal G:STD_LOGIC:='0';
 signal notCCK:STD_LOGIC:='0';
 signal notRCK:STD_LOGIC:='0';
component d_trigger
port(
     d:in STD_LOGIC;
     clk : in STD_LOGIC;
     notY0 : out STD_LOGIC
    );
end component;
component threest
port (
  en : in STD_LOGIC;
   inp1: in std_logic;
   inp2: in std_logic;
   outp: out std_logic
);
end component;
component dr_trigger
port(
     d:in STD_LOGIC;
     clk : in STD_LOGIC;
     rst : in STD_LOGIC;
     Y0 : out STD_LOGIC;
     notY0 : out STD_LOGIC
    );
end component;
begin
ENPENTLOAD<=(not notENP) and (not notENT) and notLOAD; 

x11<=not((x21 and not UnotD) or (UnotD and x31));
x12<=not((x22 and not UnotD) or (UnotD and x32));
x13<=not((x23 and not UnotD) or (UnotD and x33));
x14<=not((x24 and not UnotD) or (UnotD and x34));
notRCO<=not(x11 and x12 and x13 and x14 and (not notENT));

al<=not(a or notLOAD);
bl<=not(b or notLOAD);
cl<=not(c or notLOAD);
dl<=not(d or notLOAD);

x51<=not((x21 and ENPENTLOAD)or(not ENPENTLOAD and notLOAD and x31)or(al));
x52<=not((x22 and ENPENTLOAD and x11)or((not ENPENTLOAD or not x11)and(notLOAD)and(x32))or(bl));
x53<=not((x23 and ENPENTLOAD and x11 and x12)or((not ENPENTLOAD or not x11 or not x12)and(notLOAD)and(x33))or(cl));
x54<=not((x24 and ENPENTLOAD and x11 and x12 and x13)or((not ENPENTLOAD or not x11 or not x12 or not x13)and(notLOAD)and(x34))or(dl));

qa1<=RnotC and x41;
qa2<= not RnotC and x31;
qb1<=RnotC and x42;
qb2<= not RnotC and x32;
qc1<=RnotC and x43;
qc2<= not RnotC and x33;
qd1<=RnotC and x44;
qd2<= not RnotC and x34;

                 
notCCK<= not CCK;
notRCK<= not RCK;
dr_triggerx1 : dr_trigger port map (x51, notCCK, notCCLR,x21,x31);
dr_triggerx2 : dr_trigger port map (x52, notCCK, notCCLR,x22,x32);
dr_triggerx3 : dr_trigger port map (x53, notCCK, notCCLR,x23,x33);
dr_triggerx4 : dr_trigger port map (x54, notCCK, notCCLR,x24,x34);

d_triggerx1 : d_trigger port map (x21, notRCK,x41);
d_triggerx2 : d_trigger port map (x22, notRCK,x42);
d_triggerx3 : d_trigger port map (x23, notRCK,x43);
d_triggerx4 : d_trigger port map (x24, notRCK,x44);
--t_triggerx1 : t_trigger port map (cclken, notcclr, x41,x21);
--t_triggerx2 : t_trigger port map (x11, notcclr, x42,x22);
--t_triggerx3 : t_trigger port map (x12, notcclr, x43,x23);
--t_triggerx4 : t_trigger port map (x13, notcclr, x44,x24);
--t_triggerx5 : t_trigger port map (x14, notcclr, x45,x25);
--t_triggerx6 : t_trigger port map (x15, notcclr, x46,x26);
--t_triggerx7 : t_trigger port map (x16, notcclr, x47,x27);
--t_triggerx8 : t_trigger port map (x17, notcclr, x48,x28);
--rs_triggerx1 : rs_trigger port map (x41, rclk, x21,x31);
--rs_triggerx2 : rs_trigger port map (x42, rclk, x22,x32);
--rs_triggerx3 : rs_trigger port map (x43, rclk, x23,x33);
--rs_triggerx4 : rs_trigger port map (x44, rclk, x24,x34);
--rs_triggerx5 : rs_trigger port map (x45, rclk, x25,x35);
--rs_triggerx6 : rs_trigger port map (x46, rclk, x26,x36);
--rs_triggerx7 : rs_trigger port map (x47, rclk, x27,x37);
--rs_triggerx8 : rs_trigger port map (x48, rclk, x28,x38);
G<= not notG;
threestx1: threest port map(G,qa1,qa2,Qa);
threestx2: threest port map(G,qb1,qb2,Qb);
threestx3: threest port map(G,qc1,qc2,Qc);
threestx4: threest port map(G,qd1,qd2,Qd);

end;