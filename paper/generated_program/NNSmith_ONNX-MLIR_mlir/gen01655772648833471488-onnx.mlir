module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 4 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 4 , 4] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[[4], [6], [4], [4]]]]> : tensor<1x1x4x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<4 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<3> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v9_0", "v7_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<1 x array<4 x array<1 x i32>>>>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<1 x array<1 x array<4 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(4 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.mlir.constant(4 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(8 : index) : i64
    %69 = llvm.mlir.constant(8 : index) : i64
    %70 = llvm.mlir.null : !llvm.ptr<i32>
    %71 = llvm.getelementptr %70[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i32> to i64
    %73 = llvm.mlir.constant(16 : index) : i64
    %74 = llvm.add %72, %73  : i64
    %75 = llvm.call @malloc(%74) : (i64) -> !llvm.ptr<i8>
    %76 = llvm.bitcast %75 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %77 = llvm.ptrtoint %76 : !llvm.ptr<i32> to i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.sub %73, %78  : i64
    %80 = llvm.add %77, %79  : i64
    %81 = llvm.urem %80, %73  : i64
    %82 = llvm.sub %80, %81  : i64
    %83 = llvm.inttoptr %82 : i64 to !llvm.ptr<i32>
    %84 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %85 = llvm.insertvalue %76, %84[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %63, %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %64, %89[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %65, %90[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %66, %91[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %68, %92[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %65, %93[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %66, %94[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %67, %95[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%97 : i64)
  ^bb1(%100: i64):  // 2 preds: ^bb0, ^bb11
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%102 : i64)
  ^bb3(%105: i64):  // 2 preds: ^bb2, ^bb10
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(4 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%107 : i64)
  ^bb5(%110: i64):  // 2 preds: ^bb4, ^bb9
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%112 : i64)
  ^bb7(%115: i64):  // 2 preds: ^bb6, ^bb8
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %117 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.getelementptr %117[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(8 : index) : i64
    %122 = llvm.mul %100, %121  : i64
    %123 = llvm.mlir.constant(4 : index) : i64
    %124 = llvm.mul %105, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.add %125, %110  : i64
    %127 = llvm.add %126, %115  : i64
    %128 = llvm.getelementptr %120[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.load %128 : !llvm.ptr<i32>
    %130 = llvm.icmp "slt" %119, %129 : i32
    %131 = llvm.select %130, %119, %129 : i1, i32
    %132 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(8 : index) : i64
    %134 = llvm.mul %100, %133  : i64
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mul %105, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.add %137, %110  : i64
    %139 = llvm.add %138, %115  : i64
    %140 = llvm.getelementptr %132[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %131, %140 : !llvm.ptr<i32>
    %141 = llvm.add %115, %114  : i64
    llvm.br ^bb7(%141 : i64)
  ^bb9:  // pred: ^bb7
    %142 = llvm.add %110, %109  : i64
    llvm.br ^bb5(%142 : i64)
  ^bb10:  // pred: ^bb5
    %143 = llvm.add %105, %104  : i64
    llvm.br ^bb3(%143 : i64)
  ^bb11:  // pred: ^bb3
    %144 = llvm.add %100, %99  : i64
    llvm.br ^bb1(%144 : i64)
  ^bb12:  // pred: ^bb1
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(16 : index) : i64
    %151 = llvm.mlir.constant(16 : index) : i64
    %152 = llvm.mlir.null : !llvm.ptr<i32>
    %153 = llvm.getelementptr %152[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %154 = llvm.ptrtoint %153 : !llvm.ptr<i32> to i64
    %155 = llvm.mlir.constant(16 : index) : i64
    %156 = llvm.add %154, %155  : i64
    %157 = llvm.call @malloc(%156) : (i64) -> !llvm.ptr<i8>
    %158 = llvm.bitcast %157 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %159 = llvm.ptrtoint %158 : !llvm.ptr<i32> to i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.sub %155, %160  : i64
    %162 = llvm.add %159, %161  : i64
    %163 = llvm.urem %162, %155  : i64
    %164 = llvm.sub %162, %163  : i64
    %165 = llvm.inttoptr %164 : i64 to !llvm.ptr<i32>
    %166 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %167 = llvm.insertvalue %158, %166[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.insertvalue %169, %168[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %145, %170[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %146, %171[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %147, %172[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %148, %173[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %150, %174[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %147, %175[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %148, %176[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %149, %177[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%179 : i64)
  ^bb13(%182: i64):  // 2 preds: ^bb12, ^bb23
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%184 : i64)
  ^bb15(%187: i64):  // 2 preds: ^bb14, ^bb22
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%189 : i64)
  ^bb17(%192: i64):  // 2 preds: ^bb16, ^bb21
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%194 : i64)
  ^bb19(%197: i64):  // 2 preds: ^bb18, ^bb20
    %198 = llvm.icmp "slt" %197, %195 : i64
    llvm.cond_br %198, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %199 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.mlir.constant(8 : index) : i64
    %201 = llvm.mul %182, %200  : i64
    %202 = llvm.mlir.constant(4 : index) : i64
    %203 = llvm.mul %187, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.add %204, %192  : i64
    %206 = llvm.add %205, %197  : i64
    %207 = llvm.getelementptr %199[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %208 = llvm.load %207 : !llvm.ptr<i32>
    %209 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.mlir.constant(16 : index) : i64
    %211 = llvm.mul %182, %210  : i64
    %212 = llvm.mlir.constant(4 : index) : i64
    %213 = llvm.mul %187, %212  : i64
    %214 = llvm.add %211, %213  : i64
    %215 = llvm.add %214, %192  : i64
    %216 = llvm.add %215, %197  : i64
    %217 = llvm.getelementptr %209[%216] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %208, %217 : !llvm.ptr<i32>
    %218 = llvm.add %197, %196  : i64
    llvm.br ^bb19(%218 : i64)
  ^bb21:  // pred: ^bb19
    %219 = llvm.add %192, %191  : i64
    llvm.br ^bb17(%219 : i64)
  ^bb22:  // pred: ^bb17
    %220 = llvm.add %187, %186  : i64
    llvm.br ^bb15(%220 : i64)
  ^bb23:  // pred: ^bb15
    %221 = llvm.add %182, %181  : i64
    llvm.br ^bb13(%221 : i64)
  ^bb24:  // pred: ^bb13
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%222 : i64)
  ^bb25(%225: i64):  // 2 preds: ^bb24, ^bb35
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%227 : i64)
  ^bb27(%230: i64):  // 2 preds: ^bb26, ^bb34
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%232 : i64)
  ^bb29(%235: i64):  // 2 preds: ^bb28, ^bb33
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%237 : i64)
  ^bb31(%240: i64):  // 2 preds: ^bb30, ^bb32
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.add %230, %242  : i64
    %244 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mul %225, %245  : i64
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mul %230, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.add %249, %235  : i64
    %251 = llvm.add %250, %240  : i64
    %252 = llvm.getelementptr %244[%251] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %253 = llvm.load %252 : !llvm.ptr<i32>
    %254 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.mlir.constant(16 : index) : i64
    %256 = llvm.mul %225, %255  : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mul %243, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.add %259, %235  : i64
    %261 = llvm.add %260, %240  : i64
    %262 = llvm.getelementptr %254[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %253, %262 : !llvm.ptr<i32>
    %263 = llvm.add %240, %239  : i64
    llvm.br ^bb31(%263 : i64)
  ^bb33:  // pred: ^bb31
    %264 = llvm.add %235, %234  : i64
    llvm.br ^bb29(%264 : i64)
  ^bb34:  // pred: ^bb29
    %265 = llvm.add %230, %229  : i64
    llvm.br ^bb27(%265 : i64)
  ^bb35:  // pred: ^bb27
    %266 = llvm.add %225, %224  : i64
    llvm.br ^bb25(%266 : i64)
  ^bb36:  // pred: ^bb25
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%267 : i64)
  ^bb37(%270: i64):  // 2 preds: ^bb36, ^bb47
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%272 : i64)
  ^bb39(%275: i64):  // 2 preds: ^bb38, ^bb46
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(4 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%277 : i64)
  ^bb41(%280: i64):  // 2 preds: ^bb40, ^bb45
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%282 : i64)
  ^bb43(%285: i64):  // 2 preds: ^bb42, ^bb44
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %287 = llvm.mlir.constant(3 : index) : i64
    %288 = llvm.add %275, %287  : i64
    %289 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mul %270, %290  : i64
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mul %275, %292  : i64
    %294 = llvm.add %291, %293  : i64
    %295 = llvm.add %294, %280  : i64
    %296 = llvm.add %295, %285  : i64
    %297 = llvm.getelementptr %289[%296] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %298 = llvm.load %297 : !llvm.ptr<i32>
    %299 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.mlir.constant(16 : index) : i64
    %301 = llvm.mul %270, %300  : i64
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mul %288, %302  : i64
    %304 = llvm.add %301, %303  : i64
    %305 = llvm.add %304, %280  : i64
    %306 = llvm.add %305, %285  : i64
    %307 = llvm.getelementptr %299[%306] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %298, %307 : !llvm.ptr<i32>
    %308 = llvm.add %285, %284  : i64
    llvm.br ^bb43(%308 : i64)
  ^bb45:  // pred: ^bb43
    %309 = llvm.add %280, %279  : i64
    llvm.br ^bb41(%309 : i64)
  ^bb46:  // pred: ^bb41
    %310 = llvm.add %275, %274  : i64
    llvm.br ^bb39(%310 : i64)
  ^bb47:  // pred: ^bb39
    %311 = llvm.add %270, %269  : i64
    llvm.br ^bb37(%311 : i64)
  ^bb48:  // pred: ^bb37
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mlir.constant(4 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(16 : index) : i64
    %318 = llvm.mlir.constant(16 : index) : i64
    %319 = llvm.mlir.null : !llvm.ptr<i32>
    %320 = llvm.getelementptr %319[%318] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i32> to i64
    %322 = llvm.mlir.constant(16 : index) : i64
    %323 = llvm.add %321, %322  : i64
    %324 = llvm.call @malloc(%323) : (i64) -> !llvm.ptr<i8>
    %325 = llvm.bitcast %324 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<i32> to i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.sub %322, %327  : i64
    %329 = llvm.add %326, %328  : i64
    %330 = llvm.urem %329, %322  : i64
    %331 = llvm.sub %329, %330  : i64
    %332 = llvm.inttoptr %331 : i64 to !llvm.ptr<i32>
    %333 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %334 = llvm.insertvalue %325, %333[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %332, %334[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.insertvalue %336, %335[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %312, %337[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %313, %338[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %314, %339[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %315, %340[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %317, %341[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %314, %342[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %315, %343[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %316, %344[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%346 : i64)
  ^bb49(%349: i64):  // 2 preds: ^bb48, ^bb59
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%351 : i64)
  ^bb51(%354: i64):  // 2 preds: ^bb50, ^bb58
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%356 : i64)
  ^bb53(%359: i64):  // 2 preds: ^bb52, ^bb57
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%361 : i64)
  ^bb55(%364: i64):  // 2 preds: ^bb54, ^bb56
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %366 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(16 : index) : i64
    %368 = llvm.mul %349, %367  : i64
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mul %354, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.add %371, %359  : i64
    %373 = llvm.add %372, %364  : i64
    %374 = llvm.getelementptr %366[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %375 = llvm.load %374 : !llvm.ptr<i32>
    %376 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %377 = llvm.load %376 : !llvm.ptr<i32>
    %378 = llvm.sub %375, %377  : i32
    %379 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mlir.constant(16 : index) : i64
    %381 = llvm.mul %349, %380  : i64
    %382 = llvm.mlir.constant(4 : index) : i64
    %383 = llvm.mul %354, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.add %384, %359  : i64
    %386 = llvm.add %385, %364  : i64
    %387 = llvm.getelementptr %379[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %378, %387 : !llvm.ptr<i32>
    %388 = llvm.add %364, %363  : i64
    llvm.br ^bb55(%388 : i64)
  ^bb57:  // pred: ^bb55
    %389 = llvm.add %359, %358  : i64
    llvm.br ^bb53(%389 : i64)
  ^bb58:  // pred: ^bb53
    %390 = llvm.add %354, %353  : i64
    llvm.br ^bb51(%390 : i64)
  ^bb59:  // pred: ^bb51
    %391 = llvm.add %349, %348  : i64
    llvm.br ^bb49(%391 : i64)
  ^bb60:  // pred: ^bb49
    %392 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %393 = llvm.extractvalue %345[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %393, %392[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.insertvalue %394, %395[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.insertvalue %397, %396[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.insertvalue %399, %398[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.insertvalue %401, %400[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.insertvalue %403, %402[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %405 = llvm.mlir.constant(4 : index) : i64
    %406 = llvm.insertvalue %405, %404[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.insertvalue %407, %406[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.insertvalue %409, %408[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mlir.constant(4 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(16 : index) : i64
    %417 = llvm.mlir.constant(64 : index) : i64
    %418 = llvm.mlir.constant(64 : index) : i64
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
    llvm.br ^bb61(%446 : i64)
  ^bb61(%449: i64):  // 2 preds: ^bb60, ^bb71
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(4 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%451 : i64)
  ^bb63(%454: i64):  // 2 preds: ^bb62, ^bb70
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(4 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%456 : i64)
  ^bb65(%459: i64):  // 2 preds: ^bb64, ^bb69
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(4 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%461 : i64)
  ^bb67(%464: i64):  // 2 preds: ^bb66, ^bb68
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %466 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(16 : index) : i64
    %468 = llvm.mul %449, %467  : i64
    %469 = llvm.mlir.constant(4 : index) : i64
    %470 = llvm.mul %454, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.add %471, %459  : i64
    %473 = llvm.add %472, %28  : i64
    %474 = llvm.getelementptr %466[%473] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %475 = llvm.load %474 : !llvm.ptr<i32>
    %476 = llvm.extractvalue %410[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %477 = llvm.mlir.constant(4 : index) : i64
    %478 = llvm.mul %454, %477  : i64
    %479 = llvm.mlir.constant(4 : index) : i64
    %480 = llvm.mul %28, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.add %481, %464  : i64
    %483 = llvm.getelementptr %476[%482] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %484 = llvm.load %483 : !llvm.ptr<i32>
    %485 = llvm.sub %475, %484  : i32
    %486 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.mlir.constant(64 : index) : i64
    %488 = llvm.mul %449, %487  : i64
    %489 = llvm.mlir.constant(16 : index) : i64
    %490 = llvm.mul %454, %489  : i64
    %491 = llvm.add %488, %490  : i64
    %492 = llvm.mlir.constant(4 : index) : i64
    %493 = llvm.mul %459, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.add %494, %464  : i64
    %496 = llvm.getelementptr %486[%495] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %485, %496 : !llvm.ptr<i32>
    %497 = llvm.add %464, %463  : i64
    llvm.br ^bb67(%497 : i64)
  ^bb69:  // pred: ^bb67
    %498 = llvm.add %459, %458  : i64
    llvm.br ^bb65(%498 : i64)
  ^bb70:  // pred: ^bb65
    %499 = llvm.add %454, %453  : i64
    llvm.br ^bb63(%499 : i64)
  ^bb71:  // pred: ^bb63
    %500 = llvm.add %449, %448  : i64
    llvm.br ^bb61(%500 : i64)
  ^bb72:  // pred: ^bb61
    llvm.return %445 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v9_0", "v7_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %28, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.getelementptr %0[%85] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %87 = llvm.load %86 : !llvm.ptr<ptr<i8>>
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %95, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %98 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.mlir.constant(8 : i64) : i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr<i8>
    %102 = llvm.bitcast %101 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %103 = llvm.mlir.constant(4 : i64) : i64
    %104 = llvm.call @omTensorCreateUntyped(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %98[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %108 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%104, %105, %107, %109) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %110 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%104, %110) : (!llvm.ptr<i8>, i64) -> ()
    %111 = llvm.call @omTensorGetShape(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.call @omTensorGetStrides(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %113 = llvm.mlir.constant(0 : i64) : i64
    %114 = llvm.extractvalue %98[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %111[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %98[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %112[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %98[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %111[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %98[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %112[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(2 : i64) : i64
    %124 = llvm.extractvalue %98[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %111[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.extractvalue %98[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %112[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.mlir.constant(3 : i64) : i64
    %129 = llvm.extractvalue %98[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %111[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.extractvalue %98[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %112[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.getelementptr %102[%133] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %104, %134 : !llvm.ptr<ptr<i8>>
    %135 = llvm.call @omTensorListCreate(%102, %99, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %135 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<199 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<199 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

