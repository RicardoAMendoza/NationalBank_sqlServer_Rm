USE [master]
GO
/****** Object:  Database [bd_bank]    Script Date: 9/25/2018 12:30:29 AM ******/
CREATE DATABASE [bd_bank]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bd_bank', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bd_bank.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bd_bank_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bd_bank_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bd_bank] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_bank].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd_bank] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd_bank] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd_bank] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd_bank] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd_bank] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd_bank] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd_bank] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd_bank] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd_bank] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd_bank] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd_bank] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd_bank] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd_bank] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd_bank] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd_bank] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bd_bank] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd_bank] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd_bank] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd_bank] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd_bank] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd_bank] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd_bank] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd_bank] SET RECOVERY FULL 
GO
ALTER DATABASE [bd_bank] SET  MULTI_USER 
GO
ALTER DATABASE [bd_bank] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd_bank] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd_bank] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd_bank] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bd_bank] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bd_bank', N'ON'
GO
ALTER DATABASE [bd_bank] SET QUERY_STORE = OFF
GO
USE [bd_bank]
GO
/****** Object:  Table [dbo].[taccount]    Script Date: 9/25/2018 12:30:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taccount](
	[idaccount] [int] IDENTITY(1,1) NOT NULL,
	[number] [varchar](45) NULL,
	[balance] [decimal](22, 6) NULL,
	[openDate] [datetime] NULL,
	[idemployee] [int] NULL,
	[idagencies] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idaccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taccounttype]    Script Date: 9/25/2018 12:30:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taccounttype](
	[idaccounttype] [int] IDENTITY(1,1) NOT NULL,
	[accountType] [varchar](45) NULL,
	[comission] [decimal](22, 6) NULL,
	[overdraft] [decimal](22, 6) NULL,
	[interestRate] [decimal](22, 6) NULL,
PRIMARY KEY CLUSTERED 
(
	[idaccounttype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tadmin]    Script Date: 9/25/2018 12:30:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tadmin](
	[idadmin] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NULL,
	[lastName] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[img] [varchar](45) NULL,
	[password] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idadmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tagencies]    Script Date: 9/25/2018 12:30:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tagencies](
	[idagencies] [int] IDENTITY(1,1) NOT NULL,
	[agencyNumber] [varchar](45) NULL,
	[name] [varchar](45) NULL,
	[address] [varchar](45) NULL,
	[idbank] [int] NOT NULL,
	[idtdirectorAgencie] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idagencies] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarea]    Script Date: 9/25/2018 12:30:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarea](
	[codearea] [varchar](3) NOT NULL,
	[description] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[codearea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbank]    Script Date: 9/25/2018 12:30:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbank](
	[idbank] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NULL,
	[capital] [decimal](20, 0) NULL,
	[address] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idbank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tclient]    Script Date: 9/25/2018 12:30:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tclient](
	[idclient] [int] IDENTITY(1,1) NOT NULL,
	[clientNumber] [varchar](45) NULL,
	[name] [varchar](45) NULL,
	[lastName] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[img] [varchar](1) NULL,
	[address] [varchar](45) NULL,
	[cardNumber] [varchar](45) NULL,
	[nip] [varchar](45) NULL,
	[idagencies] [int] NOT NULL,
	[idemployee] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idclient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tclient_account]    Script Date: 9/25/2018 12:30:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tclient_account](
	[idaccounttype] [int] NOT NULL,
	[idclient] [int] NOT NULL,
	[idaccount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idaccounttype] ASC,
	[idclient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tdirectorAgencie]    Script Date: 9/25/2018 12:30:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tdirectorAgencie](
	[idtdirectorAgencie] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NULL,
	[lastName] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[img] [varchar](45) NULL,
	[salary] [decimal](22, 6) NULL,
PRIMARY KEY CLUSTERED 
(
	[idtdirectorAgencie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tdirectorgeneral]    Script Date: 9/25/2018 12:30:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tdirectorgeneral](
	[iddirector] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NULL,
	[lastName] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[img] [varchar](45) NULL,
	[salary] [decimal](22, 6) NULL,
PRIMARY KEY CLUSTERED 
(
	[iddirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temploy_area]    Script Date: 9/25/2018 12:30:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temploy_area](
	[idemployee] [int] NOT NULL,
	[codearea] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idemployee] ASC,
	[codearea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temployee]    Script Date: 9/25/2018 12:30:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temployee](
	[idemployee] [int] IDENTITY(1,1) NOT NULL,
	[employeeNumber] [varchar](45) NULL,
	[name] [varchar](45) NULL,
	[lastName] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[img] [varchar](45) NULL,
	[hiringDate] [date] NULL,
	[idagencies] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idemployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ttransaction]    Script Date: 9/25/2018 12:30:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ttransaction](
	[idtransaction] [int] IDENTITY(1,1) NOT NULL,
	[balance] [decimal](22, 6) NULL,
	[transactionDate] [datetime] NULL,
	[comission] [decimal](22, 6) NULL,
	[overdraft] [decimal](22, 6) NULL,
	[interesRate] [decimal](22, 6) NULL,
	[idaccount] [int] NOT NULL,
	[idclient] [int] NOT NULL,
	[idemployee] [int] NOT NULL,
	[idagencies] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtransaction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[taccount] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[taccount] ADD  DEFAULT (NULL) FOR [balance]
GO
ALTER TABLE [dbo].[taccount] ADD  DEFAULT (NULL) FOR [openDate]
GO
ALTER TABLE [dbo].[taccount] ADD  DEFAULT (NULL) FOR [idemployee]
GO
ALTER TABLE [dbo].[taccount] ADD  DEFAULT (NULL) FOR [idagencies]
GO
ALTER TABLE [dbo].[taccounttype] ADD  DEFAULT (NULL) FOR [accountType]
GO
ALTER TABLE [dbo].[taccounttype] ADD  DEFAULT (NULL) FOR [comission]
GO
ALTER TABLE [dbo].[taccounttype] ADD  DEFAULT (NULL) FOR [overdraft]
GO
ALTER TABLE [dbo].[taccounttype] ADD  DEFAULT (NULL) FOR [interestRate]
GO
ALTER TABLE [dbo].[tadmin] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tadmin] ADD  DEFAULT (NULL) FOR [lastName]
GO
ALTER TABLE [dbo].[tadmin] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[tadmin] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[tadmin] ADD  DEFAULT (NULL) FOR [password]
GO
ALTER TABLE [dbo].[tagencies] ADD  DEFAULT (NULL) FOR [agencyNumber]
GO
ALTER TABLE [dbo].[tagencies] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tagencies] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[tarea] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[tbank] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tbank] ADD  DEFAULT (NULL) FOR [capital]
GO
ALTER TABLE [dbo].[tbank] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[tclient] ADD  DEFAULT (NULL) FOR [clientNumber]
GO
ALTER TABLE [dbo].[tclient] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tclient] ADD  DEFAULT (NULL) FOR [lastName]
GO
ALTER TABLE [dbo].[tclient] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[tclient] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[tclient] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[tclient] ADD  DEFAULT (NULL) FOR [cardNumber]
GO
ALTER TABLE [dbo].[tclient] ADD  DEFAULT (NULL) FOR [nip]
GO
ALTER TABLE [dbo].[tdirectorAgencie] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tdirectorAgencie] ADD  DEFAULT (NULL) FOR [lastName]
GO
ALTER TABLE [dbo].[tdirectorAgencie] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[tdirectorAgencie] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[tdirectorAgencie] ADD  DEFAULT (NULL) FOR [salary]
GO
ALTER TABLE [dbo].[tdirectorgeneral] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tdirectorgeneral] ADD  DEFAULT (NULL) FOR [lastName]
GO
ALTER TABLE [dbo].[tdirectorgeneral] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[tdirectorgeneral] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[tdirectorgeneral] ADD  DEFAULT (NULL) FOR [salary]
GO
ALTER TABLE [dbo].[temployee] ADD  DEFAULT (NULL) FOR [employeeNumber]
GO
ALTER TABLE [dbo].[temployee] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[temployee] ADD  DEFAULT (NULL) FOR [lastName]
GO
ALTER TABLE [dbo].[temployee] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[temployee] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[temployee] ADD  DEFAULT (NULL) FOR [hiringDate]
GO
ALTER TABLE [dbo].[ttransaction] ADD  DEFAULT (NULL) FOR [balance]
GO
ALTER TABLE [dbo].[ttransaction] ADD  DEFAULT (NULL) FOR [transactionDate]
GO
ALTER TABLE [dbo].[ttransaction] ADD  DEFAULT (NULL) FOR [comission]
GO
ALTER TABLE [dbo].[ttransaction] ADD  DEFAULT (NULL) FOR [overdraft]
GO
ALTER TABLE [dbo].[ttransaction] ADD  DEFAULT (NULL) FOR [interesRate]
GO
ALTER TABLE [dbo].[tagencies]  WITH CHECK ADD  CONSTRAINT [FK_tagencies_tbank] FOREIGN KEY([idbank])
REFERENCES [dbo].[tbank] ([idbank])
GO
ALTER TABLE [dbo].[tagencies] CHECK CONSTRAINT [FK_tagencies_tbank]
GO
ALTER TABLE [dbo].[tagencies]  WITH CHECK ADD  CONSTRAINT [FK_tagencies_tdirectorAgencie] FOREIGN KEY([idtdirectorAgencie])
REFERENCES [dbo].[tdirectorAgencie] ([idtdirectorAgencie])
GO
ALTER TABLE [dbo].[tagencies] CHECK CONSTRAINT [FK_tagencies_tdirectorAgencie]
GO
ALTER TABLE [dbo].[tbank]  WITH CHECK ADD  CONSTRAINT [FK_tbank_tdirectorgeneral] FOREIGN KEY([idbank])
REFERENCES [dbo].[tdirectorgeneral] ([iddirector])
GO
ALTER TABLE [dbo].[tbank] CHECK CONSTRAINT [FK_tbank_tdirectorgeneral]
GO
ALTER TABLE [dbo].[tclient]  WITH CHECK ADD  CONSTRAINT [FK_tclient_tagencies] FOREIGN KEY([idagencies])
REFERENCES [dbo].[tagencies] ([idagencies])
GO
ALTER TABLE [dbo].[tclient] CHECK CONSTRAINT [FK_tclient_tagencies]
GO
ALTER TABLE [dbo].[tclient]  WITH CHECK ADD  CONSTRAINT [FK_tclient_temployee] FOREIGN KEY([idemployee])
REFERENCES [dbo].[temployee] ([idemployee])
GO
ALTER TABLE [dbo].[tclient] CHECK CONSTRAINT [FK_tclient_temployee]
GO
ALTER TABLE [dbo].[tclient_account]  WITH CHECK ADD  CONSTRAINT [FK_tclient_account_taccount] FOREIGN KEY([idaccount])
REFERENCES [dbo].[taccount] ([idaccount])
GO
ALTER TABLE [dbo].[tclient_account] CHECK CONSTRAINT [FK_tclient_account_taccount]
GO
ALTER TABLE [dbo].[tclient_account]  WITH CHECK ADD  CONSTRAINT [FK_tclient_account_taccounttype] FOREIGN KEY([idaccounttype])
REFERENCES [dbo].[taccounttype] ([idaccounttype])
GO
ALTER TABLE [dbo].[tclient_account] CHECK CONSTRAINT [FK_tclient_account_taccounttype]
GO
ALTER TABLE [dbo].[tclient_account]  WITH CHECK ADD  CONSTRAINT [FK_tclient_account_tclient] FOREIGN KEY([idclient])
REFERENCES [dbo].[tclient] ([idclient])
GO
ALTER TABLE [dbo].[tclient_account] CHECK CONSTRAINT [FK_tclient_account_tclient]
GO
ALTER TABLE [dbo].[temploy_area]  WITH CHECK ADD  CONSTRAINT [FK_temploy_area_tarea] FOREIGN KEY([codearea])
REFERENCES [dbo].[tarea] ([codearea])
GO
ALTER TABLE [dbo].[temploy_area] CHECK CONSTRAINT [FK_temploy_area_tarea]
GO
ALTER TABLE [dbo].[temploy_area]  WITH CHECK ADD  CONSTRAINT [FK_temploy_area_temployee] FOREIGN KEY([idemployee])
REFERENCES [dbo].[temployee] ([idemployee])
GO
ALTER TABLE [dbo].[temploy_area] CHECK CONSTRAINT [FK_temploy_area_temployee]
GO
ALTER TABLE [dbo].[temployee]  WITH CHECK ADD  CONSTRAINT [FK_temployee_tagencies] FOREIGN KEY([idagencies])
REFERENCES [dbo].[tagencies] ([idagencies])
GO
ALTER TABLE [dbo].[temployee] CHECK CONSTRAINT [FK_temployee_tagencies]
GO
ALTER TABLE [dbo].[ttransaction]  WITH CHECK ADD  CONSTRAINT [FK_ttransaction_taccount] FOREIGN KEY([idaccount])
REFERENCES [dbo].[taccount] ([idaccount])
GO
ALTER TABLE [dbo].[ttransaction] CHECK CONSTRAINT [FK_ttransaction_taccount]
GO
USE [master]
GO
ALTER DATABASE [bd_bank] SET  READ_WRITE 
GO
