USE [master]
GO
/****** Object:  Database [NOAH]    Script Date: 7/20/2017 10:28:31 AM ******/
CREATE DATABASE [NOAH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NOAH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\NOAH.mdf' , SIZE = 24576KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NOAH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\NOAH_log.ldf' , SIZE = 16576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NOAH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NOAH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NOAH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NOAH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NOAH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NOAH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NOAH] SET ARITHABORT OFF 
GO
ALTER DATABASE [NOAH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NOAH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NOAH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NOAH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NOAH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NOAH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NOAH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NOAH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NOAH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NOAH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NOAH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NOAH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NOAH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NOAH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NOAH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NOAH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NOAH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NOAH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NOAH] SET  MULTI_USER 
GO
ALTER DATABASE [NOAH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NOAH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NOAH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NOAH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NOAH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NOAH] SET QUERY_STORE = OFF
GO
USE [NOAH]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [NOAH]
GO
/****** Object:  Table [dbo].[AmcacheAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmcacheAudited](
	[amcacheAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[Associated] [bit] NULL,
	[ProgramName] [varchar](400) NULL,
	[ProgramID] [varchar](300) NULL,
	[VolumeID] [varchar](200) NULL,
	[VolumeIDLastWriteTimestamp] [datetime] NULL,
	[FileID] [varchar](30) NULL,
	[FileIDLastWriteTimestamp] [datetime] NULL,
	[SHA1] [varchar](100) NULL,
	[FullPath] [varchar](255) NULL,
	[FileExtension] [varchar](6) NULL,
	[MFTEntryNumber] [varchar](20) NULL,
	[MFTSequenceNumber] [varchar](20) NULL,
	[FileSize] [varchar](20) NULL,
	[FileVersionString] [varchar](200) NULL,
	[FileVersionNumber] [varchar](200) NULL,
	[FileDescription] [varchar](200) NULL,
	[PEHeaderSize] [varchar](20) NULL,
	[PEHeaderHash] [varchar](100) NULL,
	[PEHeaderChecksum] [varchar](20) NULL,
	[Created] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[LastModified2] [datetime] NULL,
	[CompileTime] [datetime] NULL,
	[LanguageID] [varchar](20) NULL,
	[CompanyName] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[amcacheAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AutorunAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutorunAudited](
	[autorunAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[Time] [varchar](20) NULL,
	[EntryLocation] [varchar](150) NULL,
	[Entry] [varchar](500) NULL,
	[Enabled] [varchar](20) NULL,
	[Category] [varchar](20) NULL,
	[Profile] [varchar](30) NULL,
	[Description] [varchar](500) NULL,
	[Signer] [varchar](100) NULL,
	[Company] [varchar](100) NULL,
	[ImagePath] [varchar](255) NULL,
	[Version] [varchar](20) NULL,
	[LaunchString] [varchar](5000) NULL,
	[MD5] [varchar](35) NULL,
	[SHA-1] [varchar](50) NULL,
	[PESHA-1] [varchar](70) NULL,
	[PESHA-256] [varchar](70) NULL,
	[SHA-256] [varchar](70) NULL,
	[IMP] [varchar](70) NULL,
	[Suspicious] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[autorunAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BrowserHistoryAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrowserHistoryAudited](
	[BrowserHistoryAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[BrowserType] [tinyint] NULL,
	[UserName] [varchar](100) NULL,
	[URL] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrowserHistoryAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DNSCacheAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DNSCacheAudited](
	[DNSCacheAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[RecordName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[DNSCacheAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DriveAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriveAudited](
	[diskID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[diskType] [varchar](25) NULL,
	[driveLetter] [varchar](5) NULL,
	[capacity] [int] NULL,
	[freeSpace] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[diskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExplorerBarAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExplorerBarAudited](
	[ExplorerBarAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[UserName] [varchar](100) NULL,
	[URL] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExplorerBarAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlatProcessByServerStat]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatProcessByServerStat](
	[FlatProcessByServerID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[ProcessName] [varchar](500) NULL,
	[parentProcessID] [int] NOT NULL,
	[ProcessID] [int] NOT NULL,
	[level] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FlatProcessByServerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlatProcessStat]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatProcessStat](
	[FlatProcessID] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[ProcessName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[FlatProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hunt]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hunt](
	[huntingID] [int] IDENTITY(1,1) NOT NULL,
	[huntingGUID] [varchar](50) NOT NULL,
	[huntingDate] [datetime] NULL,
	[huntingState] [smallint] NULL,
	[huntingComputerNumber] [int] NULL,
	[huntingDescription] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[huntingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InstalledProgramAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstalledProgramAudited](
	[installedProgramID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[displayName] [varchar](150) NULL,
	[displayVersion] [varchar](80) NULL,
	[installLocation] [varchar](200) NULL,
	[publisher] [varchar](100) NULL,
	[displayicon] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[installedProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkFilesAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkFilesAudited](
	[LinkFilesAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[FileName] [varchar](200) NULL,
	[Caption] [varchar](500) NULL,
	[CreationDate] [datetime] NULL,
	[LastAccessed] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[Target] [varchar](500) NULL,
	[Hidden] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[LinkFilesAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocalGroupAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalGroupAudited](
	[localGroupAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[localGroup] [varchar](200) NULL,
	[userNested] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[localGroupAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemoryAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoryAudited](
	[memoryID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[Label] [varchar](50) NULL,
	[Capacity] [int] NULL,
	[Form] [int] NULL,
	[TypeM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[memoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetStatAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetStatAudited](
	[NetstatID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[Protocol] [varchar](10) NULL,
	[LocalAddress] [varchar](32) NULL,
	[LocalPort] [varchar](10) NULL,
	[RemoteAddress] [varchar](32) NULL,
	[RemotePort] [varchar](10) NULL,
	[State] [varchar](20) NULL,
	[ProcessName] [varchar](50) NULL,
	[PID] [int] NULL,
 CONSTRAINT [PK_NetStatAudited] PRIMARY KEY CLUSTERED 
(
	[NetstatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NetworkAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkAudited](
	[networkID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[networkCard] [varchar](50) NULL,
	[dhcpEnabled] [varchar](5) NULL,
	[ipAddress] [varchar](50) NULL,
	[subnetMask] [varchar](50) NULL,
	[defaultGateway] [varchar](50) NULL,
	[dnsServers] [varchar](50) NULL,
	[dnsReg] [varchar](5) NULL,
	[primaryWins] [varchar](50) NULL,
	[secondaryWins] [varchar](50) NULL,
	[winsLookup] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[networkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ODBCConfiguredAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ODBCConfiguredAudited](
	[odbcConfiguredAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[dsn] [varchar](150) NULL,
	[serverName] [varchar](150) NULL,
	[port] [int] NULL,
	[dataBaseFile] [varchar](150) NULL,
	[dataBaseName] [varchar](150) NULL,
	[odbcUID] [varchar](150) NULL,
	[odbcPWD] [varchar](150) NULL,
	[start] [varchar](150) NULL,
	[lastUser] [varchar](150) NULL,
	[odbcDatabase] [varchar](150) NULL,
	[defaultLibraries] [varchar](150) NULL,
	[defaultPackage] [varchar](150) NULL,
	[defaultPkgLibrary] [varchar](150) NULL,
	[odbcSystem] [varchar](150) NULL,
	[driver] [varchar](150) NULL,
	[odbcDescription] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[odbcConfiguredAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ODBCInstalledAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ODBCInstalledAudited](
	[odbcInstalledAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[driver] [varchar](150) NULL,
	[driverODBCVer] [varchar](150) NULL,
	[fileExtns] [varchar](150) NULL,
	[setup] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[odbcInstalledAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OSPrivilegeAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OSPrivilegeAudited](
	[privilegeID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[strategy] [varchar](100) NULL,
	[securityParameter] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[privilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrefetchAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrefetchAudited](
	[prefetchAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[ProgramName] [varchar](40) NULL,
	[Hash] [varchar](300) NULL,
	[NumberOfExecutions] [int] NULL,
	[PrefetchSize] [int] NULL,
	[LastExecutionTime_1] [datetime2](7) NULL,
	[LastExecutionTime_2] [datetime2](7) NULL,
	[LastExecutionTime_3] [datetime2](7) NULL,
	[LastExecutionTime_4] [datetime2](7) NULL,
	[LastExecutionTime_5] [datetime2](7) NULL,
	[LastExecutionTime_6] [datetime2](7) NULL,
	[LastExecutionTime_7] [datetime2](7) NULL,
	[LastExecutionTime_8] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[prefetchAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrefetchFilesAssociatedAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrefetchFilesAssociatedAudited](
	[prefetchFilesAssociatedAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[prefetchAuditedID] [int] NOT NULL,
	[FileAssociated] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prefetchFilesAssociatedAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrinterAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrinterAudited](
	[printerAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[location] [varchar](100) NULL,
	[printerState] [int] NULL,
	[printerStatus] [int] NULL,
	[shareName] [varchar](100) NULL,
	[systemName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[printerAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProcessAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessAudited](
	[processAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[processID] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[location] [varchar](150) NOT NULL,
	[sessionID] [int] NOT NULL,
	[Handles] [int] NULL,
	[CreationDate] [varchar](100) NULL,
	[CommandLine] [varchar](5000) NULL,
	[hash] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[processAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProcessorAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessorAudited](
	[processorAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[TypeP] [varchar](100) NULL,
	[Family] [varchar](10) NULL,
	[Speed] [int] NULL,
	[CacheSize] [int] NULL,
	[Interface] [int] NULL,
	[SocketNumber] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[processorAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProcessTreeAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessTreeAudited](
	[processTreeAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[level] [int] NULL,
	[processID] [int] NULL,
	[parentProcessId] [int] NULL,
	[name] [varchar](100) NULL,
	[sessionID] [int] NULL,
	[handles] [int] NULL,
	[creationDate] [varchar](100) NULL,
	[location] [varchar](255) NULL,
	[CommandLine] [varchar](5000) NULL,
	[Decoded] [text] NULL,
	[Suspicious] [bit] NULL,
	[Description] [varchar](500) NULL,
	[hash] [varchar](300) NULL,
	[username] [varchar](100) NULL,
	[domain] [varchar](100) NULL,
	[VT] [tinyint] NULL,
	[permalink] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[processTreeAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecentDocsAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentDocsAudited](
	[recentDocsAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[UserName] [varchar](40) NULL,
	[Unicode_Link_Name] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[recentDocsAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecentFileCacheAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentFileCacheAudited](
	[recentFileCacheAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[Program] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[recentFileCacheAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RunMRUsAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunMRUsAudited](
	[RunMRUsAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[UserName] [varchar](100) NULL,
	[MRU] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[RunMRUsAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScheduledTaskAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledTaskAudited](
	[scheduledTaskAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[name] [varchar](150) NULL,
	[runAs] [varchar](150) NULL,
	[scheduledAction] [varchar](200) NULL,
	[nextRunTime] [datetime] NOT NULL,
	[lastRunTime] [datetime] NOT NULL,
	[pathName] [varchar](200) NULL,
	[arguments] [varchar](5000) NULL,
	[hash] [varchar](300) NULL,
	[Suspicious] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[scheduledTaskAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServerAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServerAudited](
	[serverID] [int] IDENTITY(1,1) NOT NULL,
	[huntingID] [int] NOT NULL,
	[serverName] [varchar](100) NULL,
	[domain] [varchar](100) NULL,
	[role] [varchar](50) NULL,
	[HW_Make] [varchar](100) NULL,
	[HW_Model] [varchar](100) NULL,
	[HW_Type] [varchar](100) NULL,
	[cpuCount] [int] NULL,
	[memoryGB] [int] NULL,
	[operatingSystem] [varchar](100) NULL,
	[servicePackLevel] [varchar](50) NULL,
	[biosName] [varchar](100) NULL,
	[biosVersion] [varchar](100) NULL,
	[hardwareSerial] [varchar](100) NULL,
	[timeZone] [varchar](50) NULL,
	[wmiVersion] [varchar](20) NULL,
	[virtualMemoryName] [varchar](50) NULL,
	[virtualMemoryCurrentUsage] [int] NULL,
	[virtualMermoryPeakUsage] [int] NULL,
	[virtualMemoryAllocatedBaseSize] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[serverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceAudited](
	[serviceAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[displayName] [varchar](150) NULL,
	[name] [varchar](150) NULL,
	[startName] [varchar](150) NULL,
	[startMode] [varchar](10) NOT NULL,
	[servicePathName] [varchar](150) NULL,
	[serviceDescription] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[serviceAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShareAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShareAudited](
	[shareAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[shareName] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[shareAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShareRightsAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShareRightsAudited](
	[shareRightsAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[shareAuditedID] [int] NOT NULL,
	[account] [varchar](100) NOT NULL,
	[rights] [varchar](200) NOT NULL,
	[aceFlags] [varchar](100) NOT NULL,
	[aceType] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shareRightsAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShimCacheAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShimCacheAudited](
	[shimCacheAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[ProgramName] [varchar](500) NULL,
	[LastModified] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[shimCacheAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuspiciousElement]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuspiciousElement](
	[SuspiciousElementID] [int] IDENTITY(1,1) NOT NULL,
	[resource] [varchar](300) NOT NULL,
	[VT] [tinyint] NULL,
	[permalink] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[SuspiciousElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USBHistoryAudited]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USBHistoryAudited](
	[USBHistoryAuditedID] [int] IDENTITY(1,1) NOT NULL,
	[serverID] [int] NOT NULL,
	[DeviceName] [varchar](200) NULL,
	[FriendlyName] [varchar](500) NULL,
	[InstanceID] [varchar](200) NULL,
	[ClassGUID] [varchar](200) NULL,
	[SymbolicName] [varchar](500) NULL,
	[SerialNumber] [varchar](200) NULL,
	[LastTimeDeviceConnected] [datetime] NULL,
	[InstallSetupDevTimeDeviceConnected] [datetime] NULL,
	[DriverDesc] [varchar](100) NULL,
	[DriverVersion] [varchar](50) NULL,
	[ProviderName] [varchar](50) NULL,
	[DriverDate] [varchar](50) NULL,
	[InfPath] [varchar](50) NULL,
	[InfSection] [varchar](50) NULL,
	[ParentIdPrefix] [varchar](200) NULL,
	[Service] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[USBHistoryAuditedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WhiteListedProcess]    Script Date: 7/20/2017 10:28:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhiteListedProcess](
	[whiteListedProcessID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[location] [varchar](255) NOT NULL,
	[resource] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[whiteListedProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AmcacheAudited]  WITH CHECK ADD  CONSTRAINT [FK_AmcacheAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[AmcacheAudited] CHECK CONSTRAINT [FK_AmcacheAudited_ServerAudited]
GO
ALTER TABLE [dbo].[AutorunAudited]  WITH CHECK ADD  CONSTRAINT [FK_AutorunAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[AutorunAudited] CHECK CONSTRAINT [FK_AutorunAudited_ServerAudited]
GO
ALTER TABLE [dbo].[BrowserHistoryAudited]  WITH CHECK ADD  CONSTRAINT [FK_BrowserHistoryAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[BrowserHistoryAudited] CHECK CONSTRAINT [FK_BrowserHistoryAudited_ServerAudited]
GO
ALTER TABLE [dbo].[DNSCacheAudited]  WITH CHECK ADD  CONSTRAINT [FK_DNSCacheAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[DNSCacheAudited] CHECK CONSTRAINT [FK_DNSCacheAudited_ServerAudited]
GO
ALTER TABLE [dbo].[DriveAudited]  WITH CHECK ADD  CONSTRAINT [FK_Drive_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[DriveAudited] CHECK CONSTRAINT [FK_Drive_ServerAudited]
GO
ALTER TABLE [dbo].[ExplorerBarAudited]  WITH CHECK ADD  CONSTRAINT [FK_ExplorerBarAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ExplorerBarAudited] CHECK CONSTRAINT [FK_ExplorerBarAudited_ServerAudited]
GO
ALTER TABLE [dbo].[FlatProcessByServerStat]  WITH CHECK ADD  CONSTRAINT [FK_FlatProcessByServerStat_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[FlatProcessByServerStat] CHECK CONSTRAINT [FK_FlatProcessByServerStat_ServerAudited]
GO
ALTER TABLE [dbo].[InstalledProgramAudited]  WITH CHECK ADD  CONSTRAINT [FK_InstalledProgramAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[InstalledProgramAudited] CHECK CONSTRAINT [FK_InstalledProgramAudited_ServerAudited]
GO
ALTER TABLE [dbo].[LinkFilesAudited]  WITH CHECK ADD  CONSTRAINT [FK_LinkFilesAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[LinkFilesAudited] CHECK CONSTRAINT [FK_LinkFilesAudited_ServerAudited]
GO
ALTER TABLE [dbo].[LocalGroupAudited]  WITH CHECK ADD  CONSTRAINT [FK_LocalGroupAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[LocalGroupAudited] CHECK CONSTRAINT [FK_LocalGroupAudited_ServerAudited]
GO
ALTER TABLE [dbo].[MemoryAudited]  WITH CHECK ADD  CONSTRAINT [FK_Memory_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[MemoryAudited] CHECK CONSTRAINT [FK_Memory_ServerAudited]
GO
ALTER TABLE [dbo].[NetStatAudited]  WITH CHECK ADD  CONSTRAINT [FK_NetStatAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[NetStatAudited] CHECK CONSTRAINT [FK_NetStatAudited_ServerAudited]
GO
ALTER TABLE [dbo].[NetworkAudited]  WITH CHECK ADD  CONSTRAINT [FK_NetworkAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[NetworkAudited] CHECK CONSTRAINT [FK_NetworkAudited_ServerAudited]
GO
ALTER TABLE [dbo].[ODBCConfiguredAudited]  WITH CHECK ADD  CONSTRAINT [FK_ODBCConfiguredAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ODBCConfiguredAudited] CHECK CONSTRAINT [FK_ODBCConfiguredAudited_ServerAudited]
GO
ALTER TABLE [dbo].[ODBCInstalledAudited]  WITH CHECK ADD  CONSTRAINT [FK_ODBCInstalledAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ODBCInstalledAudited] CHECK CONSTRAINT [FK_ODBCInstalledAudited_ServerAudited]
GO
ALTER TABLE [dbo].[OSPrivilegeAudited]  WITH CHECK ADD  CONSTRAINT [FK_OSPrivilege_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[OSPrivilegeAudited] CHECK CONSTRAINT [FK_OSPrivilege_ServerAudited]
GO
ALTER TABLE [dbo].[PrefetchAudited]  WITH CHECK ADD  CONSTRAINT [FK_PrefetchAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[PrefetchAudited] CHECK CONSTRAINT [FK_PrefetchAudited_ServerAudited]
GO
ALTER TABLE [dbo].[PrefetchFilesAssociatedAudited]  WITH CHECK ADD  CONSTRAINT [FK_PrefetchFilesAssociatedAudited_PrefetchAudited] FOREIGN KEY([prefetchAuditedID])
REFERENCES [dbo].[PrefetchAudited] ([prefetchAuditedID])
GO
ALTER TABLE [dbo].[PrefetchFilesAssociatedAudited] CHECK CONSTRAINT [FK_PrefetchFilesAssociatedAudited_PrefetchAudited]
GO
ALTER TABLE [dbo].[PrinterAudited]  WITH CHECK ADD  CONSTRAINT [FK_PrinterAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[PrinterAudited] CHECK CONSTRAINT [FK_PrinterAudited_ServerAudited]
GO
ALTER TABLE [dbo].[ProcessAudited]  WITH CHECK ADD  CONSTRAINT [FK_ProcessAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ProcessAudited] CHECK CONSTRAINT [FK_ProcessAudited_ServerAudited]
GO
ALTER TABLE [dbo].[ProcessorAudited]  WITH CHECK ADD  CONSTRAINT [FK_ProcessorAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ProcessorAudited] CHECK CONSTRAINT [FK_ProcessorAudited_ServerAudited]
GO
ALTER TABLE [dbo].[RecentDocsAudited]  WITH CHECK ADD  CONSTRAINT [FK_RecentDocsAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[RecentDocsAudited] CHECK CONSTRAINT [FK_RecentDocsAudited_ServerAudited]
GO
ALTER TABLE [dbo].[RecentFileCacheAudited]  WITH CHECK ADD  CONSTRAINT [FK_RecentFileCacheAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[RecentFileCacheAudited] CHECK CONSTRAINT [FK_RecentFileCacheAudited_ServerAudited]
GO
ALTER TABLE [dbo].[RunMRUsAudited]  WITH CHECK ADD  CONSTRAINT [FK_RunMRUsAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[RunMRUsAudited] CHECK CONSTRAINT [FK_RunMRUsAudited_ServerAudited]
GO
ALTER TABLE [dbo].[ScheduledTaskAudited]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledTaskAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ScheduledTaskAudited] CHECK CONSTRAINT [FK_ScheduledTaskAudited_ServerAudited]
GO
ALTER TABLE [dbo].[ServerAudited]  WITH CHECK ADD  CONSTRAINT [FK_ServerAudited_Hunt] FOREIGN KEY([huntingID])
REFERENCES [dbo].[Hunt] ([huntingID])
GO
ALTER TABLE [dbo].[ServerAudited] CHECK CONSTRAINT [FK_ServerAudited_Hunt]
GO
ALTER TABLE [dbo].[ServiceAudited]  WITH CHECK ADD  CONSTRAINT [FK_ServicesAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ServiceAudited] CHECK CONSTRAINT [FK_ServicesAudited_ServerAudited]
GO
ALTER TABLE [dbo].[ShareAudited]  WITH CHECK ADD  CONSTRAINT [FK_ShareAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ShareAudited] CHECK CONSTRAINT [FK_ShareAudited_ServerAudited]
GO
ALTER TABLE [dbo].[ShareRightsAudited]  WITH CHECK ADD  CONSTRAINT [FK_ShareRightsAudited_ShareAudited] FOREIGN KEY([shareAuditedID])
REFERENCES [dbo].[ShareAudited] ([shareAuditedID])
GO
ALTER TABLE [dbo].[ShareRightsAudited] CHECK CONSTRAINT [FK_ShareRightsAudited_ShareAudited]
GO
ALTER TABLE [dbo].[ShimCacheAudited]  WITH CHECK ADD  CONSTRAINT [FK_ShimCacheAudited_ServerAudited] FOREIGN KEY([serverID])
REFERENCES [dbo].[ServerAudited] ([serverID])
GO
ALTER TABLE [dbo].[ShimCacheAudited] CHECK CONSTRAINT [FK_ShimCacheAudited_ServerAudited]
GO
USE [master]
GO
ALTER DATABASE [NOAH] SET  READ_WRITE 
GO
