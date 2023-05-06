module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<[4, 6]> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.mlir.global internal constant @constant_0(dense<-5> : tensor<1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x i32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: !llvm.ptr<i32>, %arg21: !llvm.ptr<i32>, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0", "v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %23 = llvm.insertvalue %arg20, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.insertvalue %arg22, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.insertvalue %arg26, %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.insertvalue %arg24, %27[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.insertvalue %arg27, %28[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.insertvalue %arg25, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.insertvalue %arg28, %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.mlir.constant(0 : i32) : i32
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.mlir.constant(0 : i64) : i64
    %35 = llvm.mlir.constant(-1 : i64) : i64
    %36 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x i32>>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<1 x array<2 x i32>>> to !llvm.ptr<i32>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x i64>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.mlir.constant(4 : index) : i64
    %69 = llvm.mlir.constant(4 : index) : i64
    %70 = llvm.mlir.null : !llvm.ptr<i64>
    %71 = llvm.getelementptr %70[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i64> to i64
    %73 = llvm.mlir.constant(16 : index) : i64
    %74 = llvm.add %72, %73  : i64
    %75 = llvm.call @malloc(%74) : (i64) -> !llvm.ptr<i8>
    %76 = llvm.bitcast %75 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %77 = llvm.ptrtoint %76 : !llvm.ptr<i64> to i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.sub %73, %78  : i64
    %80 = llvm.add %77, %79  : i64
    %81 = llvm.urem %80, %73  : i64
    %82 = llvm.sub %80, %81  : i64
    %83 = llvm.inttoptr %82 : i64 to !llvm.ptr<i64>
    %84 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %85 = llvm.insertvalue %76, %84[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %62, %88[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %63, %89[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %64, %90[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %65, %91[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %68, %92[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %67, %93[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %65, %94[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %66, %95[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%97 : i64)
  ^bb1(%100: i64):  // 2 preds: ^bb0, ^bb11
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%102 : i64)
  ^bb3(%105: i64):  // 2 preds: ^bb2, ^bb10
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%107 : i64)
  ^bb5(%110: i64):  // 2 preds: ^bb4, ^bb9
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%112 : i64)
  ^bb7(%115: i64):  // 2 preds: ^bb6, ^bb8
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %117 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(4 : index) : i64
    %119 = llvm.mul %100, %118  : i64
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.mul %105, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mul %110, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.add %125, %115  : i64
    %127 = llvm.getelementptr %117[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %35, %127 : !llvm.ptr<i64>
    %128 = llvm.add %115, %114  : i64
    llvm.br ^bb7(%128 : i64)
  ^bb9:  // pred: ^bb7
    %129 = llvm.add %110, %109  : i64
    llvm.br ^bb5(%129 : i64)
  ^bb10:  // pred: ^bb5
    %130 = llvm.add %105, %104  : i64
    llvm.br ^bb3(%130 : i64)
  ^bb11:  // pred: ^bb3
    %131 = llvm.add %100, %99  : i64
    llvm.br ^bb1(%131 : i64)
  ^bb12:  // pred: ^bb1
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%132 : i64)
  ^bb13(%135: i64):  // 2 preds: ^bb12, ^bb26
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%137 : i64)
  ^bb15(%140: i64):  // 2 preds: ^bb14, ^bb25
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%142 : i64)
  ^bb17(%145: i64):  // 2 preds: ^bb16, ^bb24
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%147 : i64)
  ^bb19(%150: i64):  // 2 preds: ^bb18, ^bb23
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%152 : i64)
  ^bb21(%155: i64):  // 2 preds: ^bb20, ^bb22
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %157 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %158 = llvm.mlir.constant(4 : index) : i64
    %159 = llvm.mul %135, %158  : i64
    %160 = llvm.mlir.constant(4 : index) : i64
    %161 = llvm.mul %140, %160  : i64
    %162 = llvm.add %159, %161  : i64
    %163 = llvm.mlir.constant(4 : index) : i64
    %164 = llvm.mul %145, %163  : i64
    %165 = llvm.add %162, %164  : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %150, %166  : i64
    %168 = llvm.add %165, %167  : i64
    %169 = llvm.add %168, %155  : i64
    %170 = llvm.getelementptr %157[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %171 = llvm.load %170 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.mlir.constant(4 : index) : i64
    %174 = llvm.mul %140, %173  : i64
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mul %145, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mul %150, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.add %180, %155  : i64
    %182 = llvm.getelementptr %172[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %183 = llvm.load %182 : !llvm.ptr<i64>
    %184 = llvm.icmp "slt" %183, %34 : i64
    %185 = llvm.select %184, %34, %183 : i1, i64
    %186 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %187 = llvm.mlir.constant(4 : index) : i64
    %188 = llvm.mul %185, %187  : i64
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mul %140, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.mlir.constant(4 : index) : i64
    %193 = llvm.mul %145, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mul %150, %195  : i64
    %197 = llvm.add %194, %196  : i64
    %198 = llvm.add %197, %155  : i64
    %199 = llvm.getelementptr %186[%198] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %200 = llvm.load %199 : !llvm.ptr<i64>
    %201 = llvm.icmp "slt" %171, %200 : i64
    %202 = llvm.select %201, %135, %185 : i1, i64
    %203 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.mlir.constant(4 : index) : i64
    %205 = llvm.mul %140, %204  : i64
    %206 = llvm.mlir.constant(4 : index) : i64
    %207 = llvm.mul %145, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mul %150, %209  : i64
    %211 = llvm.add %208, %210  : i64
    %212 = llvm.add %211, %155  : i64
    %213 = llvm.getelementptr %203[%212] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %202, %213 : !llvm.ptr<i64>
    %214 = llvm.add %155, %154  : i64
    llvm.br ^bb21(%214 : i64)
  ^bb23:  // pred: ^bb21
    %215 = llvm.add %150, %149  : i64
    llvm.br ^bb19(%215 : i64)
  ^bb24:  // pred: ^bb19
    %216 = llvm.add %145, %144  : i64
    llvm.br ^bb17(%216 : i64)
  ^bb25:  // pred: ^bb17
    %217 = llvm.add %140, %139  : i64
    llvm.br ^bb15(%217 : i64)
  ^bb26:  // pred: ^bb15
    %218 = llvm.add %135, %134  : i64
    llvm.br ^bb13(%218 : i64)
  ^bb27:  // pred: ^bb13
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(4 : index) : i64
    %225 = llvm.mlir.constant(4 : index) : i64
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mlir.null : !llvm.ptr<i1>
    %228 = llvm.getelementptr %227[%226] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %229 = llvm.ptrtoint %228 : !llvm.ptr<i1> to i64
    %230 = llvm.mlir.constant(16 : index) : i64
    %231 = llvm.add %229, %230  : i64
    %232 = llvm.call @malloc(%231) : (i64) -> !llvm.ptr<i8>
    %233 = llvm.bitcast %232 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<i1> to i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.sub %230, %235  : i64
    %237 = llvm.add %234, %236  : i64
    %238 = llvm.urem %237, %230  : i64
    %239 = llvm.sub %237, %238  : i64
    %240 = llvm.inttoptr %239 : i64 to !llvm.ptr<i1>
    %241 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %242 = llvm.insertvalue %233, %241[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %240, %242[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.insertvalue %244, %243[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %219, %245[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %220, %246[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %221, %247[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %222, %248[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %225, %249[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %224, %250[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %222, %251[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %223, %252[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%254 : i64)
  ^bb28(%257: i64):  // 2 preds: ^bb27, ^bb38
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%259 : i64)
  ^bb30(%262: i64):  // 2 preds: ^bb29, ^bb37
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%264 : i64)
  ^bb32(%267: i64):  // 2 preds: ^bb31, ^bb36
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%269 : i64)
  ^bb34(%272: i64):  // 2 preds: ^bb33, ^bb35
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %274 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mul %257, %275  : i64
    %277 = llvm.mlir.constant(4 : index) : i64
    %278 = llvm.mul %262, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.mul %267, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %272  : i64
    %284 = llvm.getelementptr %274[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %285 = llvm.load %284 : !llvm.ptr<i64>
    %286 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.getelementptr %286[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %288 = llvm.load %287 : !llvm.ptr<i64>
    %289 = llvm.icmp "slt" %285, %288 : i64
    %290 = llvm.extractvalue %253[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mul %257, %291  : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mul %262, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mul %267, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.add %298, %272  : i64
    %300 = llvm.getelementptr %290[%299] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %289, %300 : !llvm.ptr<i1>
    %301 = llvm.add %272, %271  : i64
    llvm.br ^bb34(%301 : i64)
  ^bb36:  // pred: ^bb34
    %302 = llvm.add %267, %266  : i64
    llvm.br ^bb32(%302 : i64)
  ^bb37:  // pred: ^bb32
    %303 = llvm.add %262, %261  : i64
    llvm.br ^bb30(%303 : i64)
  ^bb38:  // pred: ^bb30
    %304 = llvm.add %257, %256  : i64
    llvm.br ^bb28(%304 : i64)
  ^bb39:  // pred: ^bb28
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mlir.null : !llvm.ptr<i32>
    %310 = llvm.getelementptr %309[%308] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i32> to i64
    %312 = llvm.mlir.constant(16 : index) : i64
    %313 = llvm.add %311, %312  : i64
    %314 = llvm.call @malloc(%313) : (i64) -> !llvm.ptr<i8>
    %315 = llvm.bitcast %314 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i32> to i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.sub %312, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.urem %319, %312  : i64
    %321 = llvm.sub %319, %320  : i64
    %322 = llvm.inttoptr %321 : i64 to !llvm.ptr<i32>
    %323 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %324 = llvm.insertvalue %315, %323[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %325 = llvm.insertvalue %322, %324[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.insertvalue %326, %325[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %328 = llvm.insertvalue %305, %327[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %329 = llvm.insertvalue %306, %328[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %330 = llvm.insertvalue %306, %329[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %331 = llvm.insertvalue %307, %330[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%332 : i64)
  ^bb40(%335: i64):  // 2 preds: ^bb39, ^bb44
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb41, ^bb45
  ^bb41:  // pred: ^bb40
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%337 : i64)
  ^bb42(%340: i64):  // 2 preds: ^bb41, ^bb43
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb43, ^bb44
  ^bb43:  // pred: ^bb42
    %342 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %343 = llvm.add %335, %33  : i64
    %344 = llvm.getelementptr %342[%343] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %345 = llvm.load %344 : !llvm.ptr<i32>
    %346 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mul %33, %347  : i64
    %349 = llvm.add %348, %340  : i64
    %350 = llvm.getelementptr %346[%349] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %351 = llvm.load %350 : !llvm.ptr<i32>
    %352 = llvm.add %345, %351  : i32
    %353 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %335, %354  : i64
    %356 = llvm.add %355, %340  : i64
    %357 = llvm.getelementptr %353[%356] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %352, %357 : !llvm.ptr<i32>
    %358 = llvm.add %340, %339  : i64
    llvm.br ^bb42(%358 : i64)
  ^bb44:  // pred: ^bb42
    %359 = llvm.add %335, %334  : i64
    llvm.br ^bb40(%359 : i64)
  ^bb45:  // pred: ^bb40
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mlir.null : !llvm.ptr<i32>
    %365 = llvm.getelementptr %364[%363] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %366 = llvm.ptrtoint %365 : !llvm.ptr<i32> to i64
    %367 = llvm.mlir.constant(16 : index) : i64
    %368 = llvm.add %366, %367  : i64
    %369 = llvm.call @malloc(%368) : (i64) -> !llvm.ptr<i8>
    %370 = llvm.bitcast %369 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %371 = llvm.ptrtoint %370 : !llvm.ptr<i32> to i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.sub %367, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.urem %374, %367  : i64
    %376 = llvm.sub %374, %375  : i64
    %377 = llvm.inttoptr %376 : i64 to !llvm.ptr<i32>
    %378 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %379 = llvm.insertvalue %370, %378[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %380 = llvm.insertvalue %377, %379[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.insertvalue %381, %380[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %383 = llvm.insertvalue %360, %382[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %384 = llvm.insertvalue %361, %383[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %385 = llvm.insertvalue %361, %384[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %386 = llvm.insertvalue %362, %385[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%387 : i64)
  ^bb46(%390: i64):  // 2 preds: ^bb45, ^bb50
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb47, ^bb51
  ^bb47:  // pred: ^bb46
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%392 : i64)
  ^bb48(%395: i64):  // 2 preds: ^bb47, ^bb49
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb49, ^bb50
  ^bb49:  // pred: ^bb48
    %397 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mul %390, %398  : i64
    %400 = llvm.add %399, %395  : i64
    %401 = llvm.getelementptr %397[%400] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %402 = llvm.load %401 : !llvm.ptr<i32>
    %403 = llvm.sub %32, %402  : i32
    %404 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mul %390, %405  : i64
    %407 = llvm.add %406, %395  : i64
    %408 = llvm.getelementptr %404[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %403, %408 : !llvm.ptr<i32>
    %409 = llvm.add %395, %394  : i64
    llvm.br ^bb48(%409 : i64)
  ^bb50:  // pred: ^bb48
    %410 = llvm.add %390, %389  : i64
    llvm.br ^bb46(%410 : i64)
  ^bb51:  // pred: ^bb46
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(4 : index) : i64
    %417 = llvm.mlir.constant(8 : index) : i64
    %418 = llvm.mlir.constant(8 : index) : i64
    %419 = llvm.mlir.null : !llvm.ptr<i32>
    %420 = llvm.getelementptr %419[%418] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i32> to i64
    %422 = llvm.mlir.constant(16 : index) : i64
    %423 = llvm.add %421, %422  : i64
    %424 = llvm.call @malloc(%423) : (i64) -> !llvm.ptr<i8>
    %425 = llvm.bitcast %424 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i32> to i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.sub %422, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.urem %429, %422  : i64
    %431 = llvm.sub %429, %430  : i64
    %432 = llvm.inttoptr %431 : i64 to !llvm.ptr<i32>
    %433 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %434 = llvm.insertvalue %425, %433[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %432, %434[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.insertvalue %436, %435[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %412, %438[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %413, %439[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %414, %440[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %417, %441[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %416, %442[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %414, %443[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %415, %444[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%446 : i64)
  ^bb52(%449: i64):  // 2 preds: ^bb51, ^bb62
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%451 : i64)
  ^bb54(%454: i64):  // 2 preds: ^bb53, ^bb61
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%456 : i64)
  ^bb56(%459: i64):  // 2 preds: ^bb55, ^bb60
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%461 : i64)
  ^bb58(%464: i64):  // 2 preds: ^bb57, ^bb59
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %466 = llvm.extractvalue %253[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(4 : index) : i64
    %468 = llvm.mul %449, %467  : i64
    %469 = llvm.mlir.constant(4 : index) : i64
    %470 = llvm.mul %33, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %459, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.add %474, %464  : i64
    %476 = llvm.getelementptr %466[%475] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %477 = llvm.load %476 : !llvm.ptr<i1>
    %478 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mul %459, %479  : i64
    %481 = llvm.add %480, %464  : i64
    %482 = llvm.getelementptr %478[%481] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %483 = llvm.load %482 : !llvm.ptr<i32>
    %484 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mul %454, %485  : i64
    %487 = llvm.add %486, %459  : i64
    %488 = llvm.add %487, %33  : i64
    %489 = llvm.getelementptr %484[%488] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %490 = llvm.load %489 : !llvm.ptr<i32>
    %491 = llvm.select %477, %483, %490 : i1, i32
    %492 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.mlir.constant(8 : index) : i64
    %494 = llvm.mul %449, %493  : i64
    %495 = llvm.mlir.constant(4 : index) : i64
    %496 = llvm.mul %454, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mul %459, %498  : i64
    %500 = llvm.add %497, %499  : i64
    %501 = llvm.add %500, %464  : i64
    %502 = llvm.getelementptr %492[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %491, %502 : !llvm.ptr<i32>
    %503 = llvm.add %464, %463  : i64
    llvm.br ^bb58(%503 : i64)
  ^bb60:  // pred: ^bb58
    %504 = llvm.add %459, %458  : i64
    llvm.br ^bb56(%504 : i64)
  ^bb61:  // pred: ^bb56
    %505 = llvm.add %454, %453  : i64
    llvm.br ^bb54(%505 : i64)
  ^bb62:  // pred: ^bb54
    %506 = llvm.add %449, %448  : i64
    llvm.br ^bb52(%506 : i64)
  ^bb63:  // pred: ^bb52
    %507 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %508 = llvm.insertvalue %386, %507[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %509 = llvm.insertvalue %445, %508[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %509 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v1_0", "v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %23 = llvm.extractvalue %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.extractvalue %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.extractvalue %22[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.extractvalue %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.extractvalue %22[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.extractvalue %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.extractvalue %22[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.extractvalue %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %23, %24, %25, %26, %27, %28, %29, %30, %31) : (!llvm.ptr<i64>, !llvm.ptr<i64>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %32, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.getelementptr %0[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<i8>>
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %77, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %0[%78] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %80 = llvm.load %79 : !llvm.ptr<ptr<i8>>
    %81 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %83 = llvm.call @omTensorGetDataPtr(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %85 = llvm.insertvalue %84, %82[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.insertvalue %84, %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.mlir.constant(0 : i64) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %90 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %91 = llvm.mlir.constant(0 : i64) : i64
    %92 = llvm.getelementptr %89[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %90[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.getelementptr %89[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %90[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.getelementptr %89[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %90[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %111, %81 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54, %81) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %112 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %113 = llvm.extractvalue %112[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %114 = llvm.extractvalue %112[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %115 = llvm.mlir.constant(2 : i64) : i64
    %116 = llvm.mlir.constant(16 : i64) : i64
    %117 = llvm.call @malloc(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %119 = llvm.mlir.constant(2 : i64) : i64
    %120 = llvm.call @omTensorCreateUntyped(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %113[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %124 = llvm.extractvalue %113[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%120, %121, %123, %125) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %126 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%120, %126) : (!llvm.ptr<i8>, i64) -> ()
    %127 = llvm.call @omTensorGetShape(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.call @omTensorGetStrides(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.extractvalue %113[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.getelementptr %127[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %113[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.getelementptr %128[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %113[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %136 = llvm.getelementptr %127[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %113[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %138 = llvm.getelementptr %128[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(0 : i64) : i64
    %140 = llvm.getelementptr %118[%139] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %120, %140 : !llvm.ptr<ptr<i8>>
    %141 = llvm.mlir.constant(4 : i64) : i64
    %142 = llvm.call @omTensorCreateUntyped(%141) : (i64) -> !llvm.ptr<i8>
    %143 = llvm.mlir.constant(1 : i64) : i64
    %144 = llvm.extractvalue %114[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.bitcast %144 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %146 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.bitcast %146 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%142, %143, %145, %147) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %148 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%142, %148) : (!llvm.ptr<i8>, i64) -> ()
    %149 = llvm.call @omTensorGetShape(%142) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %150 = llvm.call @omTensorGetStrides(%142) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %151 = llvm.mlir.constant(0 : i64) : i64
    %152 = llvm.extractvalue %114[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %149[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.extractvalue %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %150[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.mlir.constant(1 : i64) : i64
    %157 = llvm.extractvalue %114[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %149[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.extractvalue %114[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %150[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.mlir.constant(2 : i64) : i64
    %162 = llvm.extractvalue %114[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %149[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.extractvalue %114[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.getelementptr %150[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.mlir.constant(3 : i64) : i64
    %167 = llvm.extractvalue %114[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %149[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.extractvalue %114[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %150[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.mlir.constant(1 : i64) : i64
    %172 = llvm.getelementptr %118[%171] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %142, %172 : !llvm.ptr<ptr<i8>>
    %173 = llvm.call @omTensorListCreate(%118, %115, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %173 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<204 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<204 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

