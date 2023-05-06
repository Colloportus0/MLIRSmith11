module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 3 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: !llvm.ptr<i32>, %arg25: !llvm.ptr<i32>, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v7_0", "v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg20, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %27 = llvm.insertvalue %arg24, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg27, %29[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg31, %30[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg28, %31[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg32, %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg29, %33[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg33, %34[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %arg30, %35[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %arg34, %36[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.mlir.constant(-2147483648 : i32) : i32
    %40 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %47 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.null : !llvm.ptr<i32>
    %60 = llvm.getelementptr %59[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %61 = llvm.ptrtoint %60 : !llvm.ptr<i32> to i64
    %62 = llvm.mlir.constant(16 : index) : i64
    %63 = llvm.add %61, %62  : i64
    %64 = llvm.call @malloc(%63) : (i64) -> !llvm.ptr<i8>
    %65 = llvm.bitcast %64 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<i32> to i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.sub %62, %67  : i64
    %69 = llvm.add %66, %68  : i64
    %70 = llvm.urem %69, %62  : i64
    %71 = llvm.sub %69, %70  : i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr<i32>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %74 = llvm.insertvalue %65, %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %54, %77[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %55, %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %56, %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %57, %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %55, %81[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %56, %82[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %57, %83[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %58, %84[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%86 : i64)
  ^bb1(%89: i64):  // 2 preds: ^bb0, ^bb11
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%91 : i64)
  ^bb3(%94: i64):  // 2 preds: ^bb2, ^bb10
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%96 : i64)
  ^bb5(%99: i64):  // 2 preds: ^bb4, ^bb9
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%101 : i64)
  ^bb7(%104: i64):  // 2 preds: ^bb6, ^bb8
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %106 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.add %89, %94  : i64
    %108 = llvm.add %107, %99  : i64
    %109 = llvm.add %108, %104  : i64
    %110 = llvm.getelementptr %106[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %39, %110 : !llvm.ptr<i32>
    %111 = llvm.add %104, %103  : i64
    llvm.br ^bb7(%111 : i64)
  ^bb9:  // pred: ^bb7
    %112 = llvm.add %99, %98  : i64
    llvm.br ^bb5(%112 : i64)
  ^bb10:  // pred: ^bb5
    %113 = llvm.add %94, %93  : i64
    llvm.br ^bb3(%113 : i64)
  ^bb11:  // pred: ^bb3
    %114 = llvm.add %89, %88  : i64
    llvm.br ^bb1(%114 : i64)
  ^bb12:  // pred: ^bb1
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%115 : i64)
  ^bb13(%118: i64):  // 2 preds: ^bb12, ^bb26
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%120 : i64)
  ^bb15(%123: i64):  // 2 preds: ^bb14, ^bb25
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%125 : i64)
  ^bb17(%128: i64):  // 2 preds: ^bb16, ^bb24
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%130 : i64)
  ^bb19(%133: i64):  // 2 preds: ^bb18, ^bb23
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%135 : i64)
  ^bb21(%138: i64):  // 2 preds: ^bb20, ^bb22
    %139 = llvm.icmp "slt" %138, %136 : i64
    llvm.cond_br %139, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %140 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %141 = llvm.add %118, %123  : i64
    %142 = llvm.add %141, %128  : i64
    %143 = llvm.add %142, %133  : i64
    %144 = llvm.add %143, %138  : i64
    %145 = llvm.getelementptr %140[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.load %145 : !llvm.ptr<i32>
    %147 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.add %118, %128  : i64
    %149 = llvm.add %148, %133  : i64
    %150 = llvm.add %149, %138  : i64
    %151 = llvm.getelementptr %147[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %152 = llvm.load %151 : !llvm.ptr<i32>
    %153 = llvm.icmp "sgt" %152, %146 : i32
    %154 = llvm.select %153, %152, %146 : i1, i32
    %155 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.add %118, %128  : i64
    %157 = llvm.add %156, %133  : i64
    %158 = llvm.add %157, %138  : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %154, %159 : !llvm.ptr<i32>
    %160 = llvm.add %138, %137  : i64
    llvm.br ^bb21(%160 : i64)
  ^bb23:  // pred: ^bb21
    %161 = llvm.add %133, %132  : i64
    llvm.br ^bb19(%161 : i64)
  ^bb24:  // pred: ^bb19
    %162 = llvm.add %128, %127  : i64
    llvm.br ^bb17(%162 : i64)
  ^bb25:  // pred: ^bb17
    %163 = llvm.add %123, %122  : i64
    llvm.br ^bb15(%163 : i64)
  ^bb26:  // pred: ^bb15
    %164 = llvm.add %118, %117  : i64
    llvm.br ^bb13(%164 : i64)
  ^bb27:  // pred: ^bb13
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(3 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(3 : index) : i64
    %171 = llvm.mlir.constant(3 : index) : i64
    %172 = llvm.mlir.null : !llvm.ptr<i32>
    %173 = llvm.getelementptr %172[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %174 = llvm.ptrtoint %173 : !llvm.ptr<i32> to i64
    %175 = llvm.mlir.constant(16 : index) : i64
    %176 = llvm.add %174, %175  : i64
    %177 = llvm.call @malloc(%176) : (i64) -> !llvm.ptr<i8>
    %178 = llvm.bitcast %177 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %179 = llvm.ptrtoint %178 : !llvm.ptr<i32> to i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.sub %175, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.urem %182, %175  : i64
    %184 = llvm.sub %182, %183  : i64
    %185 = llvm.inttoptr %184 : i64 to !llvm.ptr<i32>
    %186 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %187 = llvm.insertvalue %178, %186[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %185, %187[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.insertvalue %189, %188[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %165, %190[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %166, %191[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %167, %192[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %168, %193[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %170, %194[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %167, %195[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %168, %196[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %169, %197[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%199 : i64)
  ^bb28(%202: i64):  // 2 preds: ^bb27, ^bb38
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%204 : i64)
  ^bb30(%207: i64):  // 2 preds: ^bb29, ^bb37
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%209 : i64)
  ^bb32(%212: i64):  // 2 preds: ^bb31, ^bb36
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%214 : i64)
  ^bb34(%217: i64):  // 2 preds: ^bb33, ^bb35
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %219 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.add %202, %207  : i64
    %221 = llvm.add %220, %212  : i64
    %222 = llvm.add %221, %217  : i64
    %223 = llvm.getelementptr %219[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %224 = llvm.load %223 : !llvm.ptr<i32>
    %225 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(3 : index) : i64
    %227 = llvm.mul %202, %226  : i64
    %228 = llvm.mlir.constant(3 : index) : i64
    %229 = llvm.mul %207, %228  : i64
    %230 = llvm.add %227, %229  : i64
    %231 = llvm.add %230, %212  : i64
    %232 = llvm.add %231, %217  : i64
    %233 = llvm.getelementptr %225[%232] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %224, %233 : !llvm.ptr<i32>
    %234 = llvm.add %217, %216  : i64
    llvm.br ^bb34(%234 : i64)
  ^bb36:  // pred: ^bb34
    %235 = llvm.add %212, %211  : i64
    llvm.br ^bb32(%235 : i64)
  ^bb37:  // pred: ^bb32
    %236 = llvm.add %207, %206  : i64
    llvm.br ^bb30(%236 : i64)
  ^bb38:  // pred: ^bb30
    %237 = llvm.add %202, %201  : i64
    llvm.br ^bb28(%237 : i64)
  ^bb39:  // pred: ^bb28
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%238 : i64)
  ^bb40(%241: i64):  // 2 preds: ^bb39, ^bb50
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%243 : i64)
  ^bb42(%246: i64):  // 2 preds: ^bb41, ^bb49
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%248 : i64)
  ^bb44(%251: i64):  // 2 preds: ^bb43, ^bb48
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%253 : i64)
  ^bb46(%256: i64):  // 2 preds: ^bb45, ^bb47
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.add %251, %258  : i64
    %260 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.add %241, %246  : i64
    %262 = llvm.add %261, %251  : i64
    %263 = llvm.add %262, %256  : i64
    %264 = llvm.getelementptr %260[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %265 = llvm.load %264 : !llvm.ptr<i32>
    %266 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(3 : index) : i64
    %268 = llvm.mul %241, %267  : i64
    %269 = llvm.mlir.constant(3 : index) : i64
    %270 = llvm.mul %246, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.add %271, %259  : i64
    %273 = llvm.add %272, %256  : i64
    %274 = llvm.getelementptr %266[%273] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %265, %274 : !llvm.ptr<i32>
    %275 = llvm.add %256, %255  : i64
    llvm.br ^bb46(%275 : i64)
  ^bb48:  // pred: ^bb46
    %276 = llvm.add %251, %250  : i64
    llvm.br ^bb44(%276 : i64)
  ^bb49:  // pred: ^bb44
    %277 = llvm.add %246, %245  : i64
    llvm.br ^bb42(%277 : i64)
  ^bb50:  // pred: ^bb42
    %278 = llvm.add %241, %240  : i64
    llvm.br ^bb40(%278 : i64)
  ^bb51:  // pred: ^bb40
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%279 : i64)
  ^bb52(%282: i64):  // 2 preds: ^bb51, ^bb62
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%284 : i64)
  ^bb54(%287: i64):  // 2 preds: ^bb53, ^bb61
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%289 : i64)
  ^bb56(%292: i64):  // 2 preds: ^bb55, ^bb60
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%294 : i64)
  ^bb58(%297: i64):  // 2 preds: ^bb57, ^bb59
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.add %292, %299  : i64
    %301 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.add %282, %287  : i64
    %303 = llvm.add %302, %292  : i64
    %304 = llvm.add %303, %297  : i64
    %305 = llvm.getelementptr %301[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.mlir.constant(3 : index) : i64
    %309 = llvm.mul %282, %308  : i64
    %310 = llvm.mlir.constant(3 : index) : i64
    %311 = llvm.mul %287, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.add %312, %300  : i64
    %314 = llvm.add %313, %297  : i64
    %315 = llvm.getelementptr %307[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %306, %315 : !llvm.ptr<i32>
    %316 = llvm.add %297, %296  : i64
    llvm.br ^bb58(%316 : i64)
  ^bb60:  // pred: ^bb58
    %317 = llvm.add %292, %291  : i64
    llvm.br ^bb56(%317 : i64)
  ^bb61:  // pred: ^bb56
    %318 = llvm.add %287, %286  : i64
    llvm.br ^bb54(%318 : i64)
  ^bb62:  // pred: ^bb54
    %319 = llvm.add %282, %281  : i64
    llvm.br ^bb52(%319 : i64)
  ^bb63:  // pred: ^bb52
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(3 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(3 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<i32>
    %326 = llvm.getelementptr %325[%324] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i32> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i32> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<i32>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %344 = llvm.insertvalue %320, %343[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.insertvalue %321, %344[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.insertvalue %322, %345[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %347 = llvm.insertvalue %321, %346[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %348 = llvm.insertvalue %322, %347[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %349 = llvm.insertvalue %323, %348[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%350 : i64)
  ^bb64(%353: i64):  // 2 preds: ^bb63, ^bb71
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb65, ^bb72
  ^bb65:  // pred: ^bb64
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(3 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%355 : i64)
  ^bb66(%358: i64):  // 2 preds: ^bb65, ^bb70
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb67, ^bb71
  ^bb67:  // pred: ^bb66
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%360 : i64)
  ^bb68(%363: i64):  // 2 preds: ^bb67, ^bb69
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb69, ^bb70
  ^bb69:  // pred: ^bb68
    %365 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %366 = llvm.mlir.constant(3 : index) : i64
    %367 = llvm.mul %353, %366  : i64
    %368 = llvm.add %367, %358  : i64
    %369 = llvm.add %368, %363  : i64
    %370 = llvm.getelementptr %365[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %39, %370 : !llvm.ptr<i32>
    %371 = llvm.add %363, %362  : i64
    llvm.br ^bb68(%371 : i64)
  ^bb70:  // pred: ^bb68
    %372 = llvm.add %358, %357  : i64
    llvm.br ^bb66(%372 : i64)
  ^bb71:  // pred: ^bb66
    %373 = llvm.add %353, %352  : i64
    llvm.br ^bb64(%373 : i64)
  ^bb72:  // pred: ^bb64
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%374 : i64)
  ^bb73(%377: i64):  // 2 preds: ^bb72, ^bb83
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%379 : i64)
  ^bb75(%382: i64):  // 2 preds: ^bb74, ^bb82
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(3 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%384 : i64)
  ^bb77(%387: i64):  // 2 preds: ^bb76, ^bb81
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%389 : i64)
  ^bb79(%392: i64):  // 2 preds: ^bb78, ^bb80
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %394 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.mlir.constant(3 : index) : i64
    %396 = llvm.mul %377, %395  : i64
    %397 = llvm.mlir.constant(3 : index) : i64
    %398 = llvm.mul %382, %397  : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.add %399, %387  : i64
    %401 = llvm.add %400, %392  : i64
    %402 = llvm.getelementptr %394[%401] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %403 = llvm.load %402 : !llvm.ptr<i32>
    %404 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %405 = llvm.mlir.constant(3 : index) : i64
    %406 = llvm.mul %382, %405  : i64
    %407 = llvm.add %406, %387  : i64
    %408 = llvm.add %407, %392  : i64
    %409 = llvm.getelementptr %404[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %410 = llvm.load %409 : !llvm.ptr<i32>
    %411 = llvm.icmp "sgt" %410, %403 : i32
    %412 = llvm.select %411, %410, %403 : i1, i32
    %413 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %414 = llvm.mlir.constant(3 : index) : i64
    %415 = llvm.mul %382, %414  : i64
    %416 = llvm.add %415, %387  : i64
    %417 = llvm.add %416, %392  : i64
    %418 = llvm.getelementptr %413[%417] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %412, %418 : !llvm.ptr<i32>
    %419 = llvm.add %392, %391  : i64
    llvm.br ^bb79(%419 : i64)
  ^bb81:  // pred: ^bb79
    %420 = llvm.add %387, %386  : i64
    llvm.br ^bb77(%420 : i64)
  ^bb82:  // pred: ^bb77
    %421 = llvm.add %382, %381  : i64
    llvm.br ^bb75(%421 : i64)
  ^bb83:  // pred: ^bb75
    %422 = llvm.add %377, %376  : i64
    llvm.br ^bb73(%422 : i64)
  ^bb84:  // pred: ^bb73
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(3 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(3 : index) : i64
    %429 = llvm.mlir.constant(3 : index) : i64
    %430 = llvm.mlir.null : !llvm.ptr<i32>
    %431 = llvm.getelementptr %430[%429] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %432 = llvm.ptrtoint %431 : !llvm.ptr<i32> to i64
    %433 = llvm.mlir.constant(16 : index) : i64
    %434 = llvm.add %432, %433  : i64
    %435 = llvm.call @malloc(%434) : (i64) -> !llvm.ptr<i8>
    %436 = llvm.bitcast %435 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %437 = llvm.ptrtoint %436 : !llvm.ptr<i32> to i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.sub %433, %438  : i64
    %440 = llvm.add %437, %439  : i64
    %441 = llvm.urem %440, %433  : i64
    %442 = llvm.sub %440, %441  : i64
    %443 = llvm.inttoptr %442 : i64 to !llvm.ptr<i32>
    %444 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %445 = llvm.insertvalue %436, %444[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %443, %445[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.insertvalue %447, %446[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %423, %448[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %424, %449[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %425, %450[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %426, %451[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %428, %452[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %425, %453[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %426, %454[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %427, %455[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%457 : i64)
  ^bb85(%460: i64):  // 2 preds: ^bb84, ^bb95
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%462 : i64)
  ^bb87(%465: i64):  // 2 preds: ^bb86, ^bb94
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(3 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%467 : i64)
  ^bb89(%470: i64):  // 2 preds: ^bb88, ^bb93
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%472 : i64)
  ^bb91(%475: i64):  // 2 preds: ^bb90, ^bb92
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %477 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.add %460, %465  : i64
    %479 = llvm.add %478, %38  : i64
    %480 = llvm.add %479, %475  : i64
    %481 = llvm.getelementptr %477[%480] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %482 = llvm.load %481 : !llvm.ptr<i32>
    %483 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %484 = llvm.mlir.constant(3 : index) : i64
    %485 = llvm.mul %465, %484  : i64
    %486 = llvm.add %485, %470  : i64
    %487 = llvm.add %486, %475  : i64
    %488 = llvm.getelementptr %483[%487] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %489 = llvm.load %488 : !llvm.ptr<i32>
    %490 = llvm.mul %482, %489  : i32
    %491 = llvm.extractvalue %456[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.mlir.constant(3 : index) : i64
    %493 = llvm.mul %460, %492  : i64
    %494 = llvm.mlir.constant(3 : index) : i64
    %495 = llvm.mul %465, %494  : i64
    %496 = llvm.add %493, %495  : i64
    %497 = llvm.add %496, %470  : i64
    %498 = llvm.add %497, %475  : i64
    %499 = llvm.getelementptr %491[%498] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %490, %499 : !llvm.ptr<i32>
    %500 = llvm.add %475, %474  : i64
    llvm.br ^bb91(%500 : i64)
  ^bb93:  // pred: ^bb91
    %501 = llvm.add %470, %469  : i64
    llvm.br ^bb89(%501 : i64)
  ^bb94:  // pred: ^bb89
    %502 = llvm.add %465, %464  : i64
    llvm.br ^bb87(%502 : i64)
  ^bb95:  // pred: ^bb87
    %503 = llvm.add %460, %459  : i64
    llvm.br ^bb85(%503 : i64)
  ^bb96:  // pred: ^bb85
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.mlir.constant(3 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.constant(3 : index) : i64
    %509 = llvm.mlir.null : !llvm.ptr<i32>
    %510 = llvm.getelementptr %509[%508] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %511 = llvm.ptrtoint %510 : !llvm.ptr<i32> to i64
    %512 = llvm.mlir.constant(16 : index) : i64
    %513 = llvm.add %511, %512  : i64
    %514 = llvm.call @malloc(%513) : (i64) -> !llvm.ptr<i8>
    %515 = llvm.bitcast %514 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %516 = llvm.ptrtoint %515 : !llvm.ptr<i32> to i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.sub %512, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.urem %519, %512  : i64
    %521 = llvm.sub %519, %520  : i64
    %522 = llvm.inttoptr %521 : i64 to !llvm.ptr<i32>
    %523 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %524 = llvm.insertvalue %515, %523[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %525 = llvm.insertvalue %522, %524[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.insertvalue %526, %525[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %528 = llvm.insertvalue %504, %527[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %529 = llvm.insertvalue %505, %528[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %530 = llvm.insertvalue %506, %529[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %531 = llvm.insertvalue %505, %530[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %532 = llvm.insertvalue %506, %531[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %533 = llvm.insertvalue %507, %532[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%534 : i64)
  ^bb97(%537: i64):  // 2 preds: ^bb96, ^bb104
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(3 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%539 : i64)
  ^bb99(%542: i64):  // 2 preds: ^bb98, ^bb103
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%544 : i64)
  ^bb101(%547: i64):  // 2 preds: ^bb100, ^bb102
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %549 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %550 = llvm.mlir.constant(3 : index) : i64
    %551 = llvm.mul %537, %550  : i64
    %552 = llvm.add %551, %542  : i64
    %553 = llvm.add %552, %547  : i64
    %554 = llvm.getelementptr %549[%553] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %555 = llvm.load %554 : !llvm.ptr<i32>
    %556 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %557 = llvm.load %556 : !llvm.ptr<i32>
    %558 = llvm.icmp "slt" %555, %557 : i32
    %559 = llvm.select %558, %557, %555 : i1, i32
    %560 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %561 = llvm.load %560 : !llvm.ptr<i32>
    %562 = llvm.icmp "slt" %559, %561 : i32
    %563 = llvm.select %562, %559, %561 : i1, i32
    %564 = llvm.extractvalue %533[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %565 = llvm.mlir.constant(3 : index) : i64
    %566 = llvm.mul %537, %565  : i64
    %567 = llvm.add %566, %542  : i64
    %568 = llvm.add %567, %547  : i64
    %569 = llvm.getelementptr %564[%568] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %563, %569 : !llvm.ptr<i32>
    %570 = llvm.add %547, %546  : i64
    llvm.br ^bb101(%570 : i64)
  ^bb103:  // pred: ^bb101
    %571 = llvm.add %542, %541  : i64
    llvm.br ^bb99(%571 : i64)
  ^bb104:  // pred: ^bb99
    %572 = llvm.add %537, %536  : i64
    llvm.br ^bb97(%572 : i64)
  ^bb105:  // pred: ^bb97
    %573 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %574 = llvm.insertvalue %456, %573[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %575 = llvm.insertvalue %533, %574[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %575 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %14[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %14[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %26[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.extractvalue %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.extractvalue %26[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %38, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.getelementptr %0[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<i8>>
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.getelementptr %62[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %63[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %91, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %92 = llvm.mlir.constant(2 : i64) : i64
    %93 = llvm.getelementptr %0[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %94 = llvm.load %93 : !llvm.ptr<ptr<i8>>
    %95 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %96 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %97 = llvm.call @omTensorGetDataPtr(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %99 = llvm.insertvalue %98, %96[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %98, %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.getelementptr %103[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %102[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %104[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.getelementptr %103[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %104[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(2 : i64) : i64
    %120 = llvm.getelementptr %103[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %104[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(3 : i64) : i64
    %127 = llvm.getelementptr %103[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %128 = llvm.load %127 : !llvm.ptr<i64>
    %129 = llvm.insertvalue %128, %125[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %104[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %131 = llvm.load %130 : !llvm.ptr<i64>
    %132 = llvm.insertvalue %131, %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %132, %95 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54, %95) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %133 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %134 = llvm.extractvalue %133[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %135 = llvm.extractvalue %133[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.mlir.constant(16 : i64) : i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %140 = llvm.mlir.constant(4 : i64) : i64
    %141 = llvm.call @omTensorCreateUntyped(%140) : (i64) -> !llvm.ptr<i8>
    %142 = llvm.mlir.constant(1 : i64) : i64
    %143 = llvm.extractvalue %134[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.bitcast %143 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %145 = llvm.extractvalue %134[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.bitcast %145 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%141, %142, %144, %146) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %147 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%141, %147) : (!llvm.ptr<i8>, i64) -> ()
    %148 = llvm.call @omTensorGetShape(%141) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %149 = llvm.call @omTensorGetStrides(%141) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %150 = llvm.mlir.constant(0 : i64) : i64
    %151 = llvm.extractvalue %134[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %148[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.extractvalue %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.getelementptr %149[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %153, %154 : !llvm.ptr<i64>
    %155 = llvm.mlir.constant(1 : i64) : i64
    %156 = llvm.extractvalue %134[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %148[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.extractvalue %134[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.getelementptr %149[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %158, %159 : !llvm.ptr<i64>
    %160 = llvm.mlir.constant(2 : i64) : i64
    %161 = llvm.extractvalue %134[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %148[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.extractvalue %134[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %149[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.mlir.constant(3 : i64) : i64
    %166 = llvm.extractvalue %134[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.getelementptr %148[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.extractvalue %134[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %149[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.mlir.constant(0 : i64) : i64
    %171 = llvm.getelementptr %139[%170] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %141, %171 : !llvm.ptr<ptr<i8>>
    %172 = llvm.mlir.constant(3 : i64) : i64
    %173 = llvm.call @omTensorCreateUntyped(%172) : (i64) -> !llvm.ptr<i8>
    %174 = llvm.mlir.constant(1 : i64) : i64
    %175 = llvm.extractvalue %135[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.bitcast %175 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %177 = llvm.extractvalue %135[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.bitcast %177 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%173, %174, %176, %178) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %179 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%173, %179) : (!llvm.ptr<i8>, i64) -> ()
    %180 = llvm.call @omTensorGetShape(%173) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %181 = llvm.call @omTensorGetStrides(%173) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %182 = llvm.mlir.constant(0 : i64) : i64
    %183 = llvm.extractvalue %135[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %184 = llvm.getelementptr %180[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.extractvalue %135[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %186 = llvm.getelementptr %181[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.mlir.constant(1 : i64) : i64
    %188 = llvm.extractvalue %135[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.getelementptr %180[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.extractvalue %135[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.getelementptr %181[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %190, %191 : !llvm.ptr<i64>
    %192 = llvm.mlir.constant(2 : i64) : i64
    %193 = llvm.extractvalue %135[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.getelementptr %180[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.extractvalue %135[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %196 = llvm.getelementptr %181[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %195, %196 : !llvm.ptr<i64>
    %197 = llvm.mlir.constant(1 : i64) : i64
    %198 = llvm.getelementptr %139[%197] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %173, %198 : !llvm.ptr<ptr<i8>>
    %199 = llvm.call @omTensorListCreate(%139, %136, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %199 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<216 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<216 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

